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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.0/Realm.xcframework.zip",
      checksum: "5eb4125de47d9cac3dc6092f9b10562d7fc49a525213e2b8c062711e703b11d6"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.0/RealmSwift.xcframework.zip",
      checksum: "43fc9fcc88df1afea70599da9a98a9c2c7c803ce58a954ec4286dcc9d2050484"
    )
    ]
)