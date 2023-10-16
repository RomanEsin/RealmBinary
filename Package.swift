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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.43.1/Realm.xcframework.zip",
      checksum: "6fce8d837f26153a02a9cd69a8265206afb4af0b252b77cdf6249b5eee8677a2"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.43.1/RealmSwift.xcframework.zip",
      checksum: "10cbb7dd1dd56904c019d096b671d9059e90d82db25bb2e7e128f59b907d878b"
    )
    ]
)