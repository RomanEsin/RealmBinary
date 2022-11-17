#!/bin/bash

latest_release_number () {
    # Github cli to get the latest release
    gh release list --repo $1 --limit 1 |
    # Regex to find the version number, assumes semantic versioning
    grep -Eo 'v[0-9]+\.[0-9]+\.[0-9]+' |
    # Take the first match in the regex
    head -1 || echo '0.0.0'
}

create_scratch () {
    # Create temporary directory
    scratch=$(mktemp -d -t TemporaryDirectory)
    if [[ $debug ]]; then open $scratch; fi
    # Run cleanup on exit
    trap "if [[ \$debug ]]; then read -p \"\"; fi; rm -rf \"$scratch\"" EXIT
}

zip_frameworks () {
    zip -rqo "Realm.xcframework.zip" "Realm.xcframework"
    zip -rqo "RealmSwift.xcframework.zip" "RealmSwift.xcframework"
}

write_binary () {
    local file=$1
    local repo=$2
    local version=$3
    local output=$4
    local comma=$5

    # Get the checksum
    touch Package.swift # checksum command requires a package file
    local checksum=$(swift package compute-checksum "$file")
    local name=$(xcframework_name $file)
    local library="Realm"

    # Write to file
    touch $output
    printf "$comma
    .binaryTarget(
      name: \"$name\",
      url: \"$repo/releases/download/$version/$name.xcframework.zip\",
      checksum: \"$checksum\"
    )" >> $output
}

template_replace () {
    local file=$(cat $1)
    # Replace the template with the contents of the replacement file
    local result=${file//"$2"/"$(trim_empty_lines $3; cat $3)"}
    # Write the result back to the original file
    rm -f $1; touch $1; printf "$result" >> $1
}

xcframework_name () {
    # Filter out path and extension to get the framework name
    # Ex. xcframework_name "FirebaseFirestore/leveldb-library.xcframework" = "leveldb-library"
    echo $1 | sed -E 's/.*\/|\.xcframework|\.xcframework\.zip//g'
}

generate_sources () {
    local sources="$1"
    # Create the sources folder
    mkdir $sources
    # Create the sources for the umbrella header and modulemap
    mkdir "$sources/Realm"
    cp -f "Realm.h" "$sources/Realm"
    cp -f "Realm.modulemap" "$sources/Realm"
    touch "$sources/Realm/dummy.m" # SPM requires at least one source file

    mkdir "$sources/RealmSwift"
    touch "$sources/RealmSwift/dummy.m"
}

trim_empty_lines () {
    # Delete all empty lines in a file
    sed -i '' '/^$/d' $1
}

generate_swift_package () {
    local package="$1"
    local template="$2"
    local dist="$3"
    local repo="$4"

    local libraries="libraries.txt"
    local targets="targets.txt"
    local binaries="binaries.txt"

    # Create package file
    cp -f $template $package

    comma="";
    write_binary "Realm.xcframework.zip" $repo $latest $binaries $comma;
    comma=",";
    write_binary "RealmSwift.xcframework.zip" $repo $latest $binaries $comma;

    echo "Creating release Package.swift..."
    template_replace $package "// GENERATE BINARIES" $binaries; rm -f $binaries
}

commit_changes() {
    branch=$1
    git checkout -b $branch
    git add .
    git commit -m"Updated Package.swift and sources for latest Realm sdks"
    git push -u origin $branch
    gh pr create --fill
}

# Exit when any command fails
set -e
set -o pipefail

# Repos
realm_repo="https://github.com/realm/realm-swift"
xcframeworks_repo="https://github.com/NikitaKosolapov/RealmBinaries"

# Release versions
latest=$(latest_release_number $realm_repo)
current=$(latest_release_number $xcframeworks_repo)

library_name="Realm"

# Args
debug=$(echo $@ || "" | grep debug)
skip_release=$(echo $@ || "" | grep skip-release)

if [[ $latest != $current || $debug ]]; then
    echo "$current is out of date. Updating to $latest..."
    distribution="dist"
    sources="Sources"
    package="Package.swift"

    # Generate files in a temporary directory
    # Use subshell to return to original directory when finished with scratchwork
    create_scratch
    (
        cd $scratch
        home=$OLDPWD
        echo "Downloading latest release..."
        gh release download --pattern 'Carthage.xcframework.zip' --repo $realm_repo
        echo "Unzipping.."
        unzip -q Carthage.xcframework.zip
        echo "Preparing xcframeworks for distribution..."
        zip_frameworks

        echo "Downloading Realm.h and Realm.modulemap"
        curl -o Realm.h https://github.com/realm/realm-swift/raw/master/Realm/Realm.h
        curl -o Realm.modulemap https://github.com/realm/realm-swift/raw/master/Realm/Realm.modulemap

        echo "Creating source files..."
        generate_sources "$sources"
        generate_swift_package "$package" "$home/package_template.swift" "$scratch/$distribution" $xcframeworks_repo ''

        echo "Validating..."
        (cd ..; swift package dump-package | read pac)
    )
    
    echo "Moving files to repo..."; cd ..

    # Remove any existing files
    if [ -d $sources ]; then rm -rf "$sources"; fi
    if [ -f $package ]; then rm -f "$package"; fi
    # Move generated files into the repo directory
    mv "$scratch/$sources" "$sources"
    mv "$scratch/$package" "$package"
    
    # Skips deploy
    if [[ $skip_release ]]; then echo "Done."; exit 0; fi

    # Deploy to repository
    echo "Merging changes to Github..."
    commit_changes "release/$latest"
    echo "Creating release draft"
    echo "Release $latest" | gh release create --target "release/$latest" --draft $latest $scratch/*.xcframework.zip
else
    echo "$current is up to date."
fi
