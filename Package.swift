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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.33.0/Realm.xcframework.zip",
      checksum: "4fe2b13877763cec753b2058f35303d52fc18487b8e8b25b3fd69f2c33874b6e"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.33.0/RealmSwift.xcframework.zip",
      checksum: "8a899de7b3b95e1b51b2d6e7607b7d629aed0021f7fa70a5cf1430758dcaa5ec"
    )
    ]
)