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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.53.0/Realm.xcframework.zip",
      checksum: "dbb7a8d685f198a06c21656a40368ad7f7f23797bf5c89cb45d5a26bbc55e522"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.53.0/RealmSwift.xcframework.zip",
      checksum: "a30005765010f698430279dfb34524ee80ecd5b862f5bbc467c57fde0ca9a399"
    )
    ]
)