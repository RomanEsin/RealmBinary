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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.2/Realm.xcframework.zip",
      checksum: "716d8e0cb281e8273b26e07d8b0dccce8f52ac5fbda0f8a1dba0991c31e7e620"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.2/RealmSwift.xcframework.zip",
      checksum: "9878330edd0722f5dbe0b811705088c1e50e88a4044743e092328aa5d2153a4d"
    )
    ]
)