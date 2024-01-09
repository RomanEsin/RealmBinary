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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.3/Realm.xcframework.zip",
      checksum: "c74374fb5cb76adfeb8e92605bf5f3d9c3499817ce5772457d1c80711da96c04"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.3/RealmSwift.xcframework.zip",
      checksum: "b390705b6c7ed823f73209c08aad1e0c354787d6c5418615046412d0a1e4eb4f"
    )
    ]
)