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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.4/Realm.xcframework.zip",
      checksum: "ed30d061a726a723f2368b1c71a7e8bf9749f61abe284e9349ba07ed0dd8b00e"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.4/RealmSwift.xcframework.zip",
      checksum: "bffc56b68f7b9cce39acaf8079145190437f40eb8ac8fa3dd6acd6cebf34662f"
    )
    ]
)