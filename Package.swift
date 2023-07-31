// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift", "Realm"])
    ],
    dependencies: [
    ],
    targets: [
            .binaryTarget(
      name: "Realm",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.0/Realm.xcframework.zip",
      checksum: "c60f51ddcae6c0f87fd3e5a5df997978bd527c04d92da1031ea423ea887dc718"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.0/RealmSwift.xcframework.zip",
      checksum: "38d90eacd64e102ec3bcf6ce69ac83bbbf70ba7e90946363e062a46dedefc71f"
    )
    ]
)