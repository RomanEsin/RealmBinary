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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.39.1/Realm.xcframework.zip",
      checksum: "2be7ee54f0b8e2ee3b4e1561e0a7d4b5cd7958b0c827e71929bcced0c10fda2b"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.39.1/RealmSwift.xcframework.zip",
      checksum: "7612136849eb7623a93ab2efdb52f8f9025402c388bb6e5664dd77466aa6892b"
    )
    ]
)