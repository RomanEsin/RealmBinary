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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.43.0/Realm.xcframework.zip",
      checksum: "5b7750ca562e90710dc3bf328ad767e88f0fda9e223da2696d002a32a73a5f01"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.43.0/RealmSwift.xcframework.zip",
      checksum: "637c9a871010b6400c6f19bcae1b34574ed45467bdf28010ad6d7ebaba813fb2"
    )
    ]
)