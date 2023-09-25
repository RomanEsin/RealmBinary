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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.4/Realm.xcframework.zip",
      checksum: "10fcdb5e925024552490e590f204bd660a4392a967284a68f186d4b351f24ac5"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.4/RealmSwift.xcframework.zip",
      checksum: "652fcefc783b585253d9de2ac9cebdea69f95dd1849232c3b747b8c02713c87f"
    )
    ]
)