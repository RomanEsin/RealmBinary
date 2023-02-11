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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.35.1/Realm.xcframework.zip",
      checksum: "8987a2c56b2dedc1b2600e4cc0f5860bcf1bf7d5c7458ebaa6a2e857911ba509"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.35.1/RealmSwift.xcframework.zip",
      checksum: "af00c75ddb8c1624a5914cb1fbca3e916aff5fc79d97101fc68d890d782f8fc9"
    )
    ]
)