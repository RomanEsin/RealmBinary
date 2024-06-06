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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.51.0/Realm.xcframework.zip",
      checksum: "0f98ac6494371574a27aae5d882e43396ebd9541744e7ffaac7b5e003185190a"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.51.0/RealmSwift.xcframework.zip",
      checksum: "30d01ce5d350b186755a7829d9248616d60e6613f8f668dfab146ea8a8c17330"
    )
    ]
)