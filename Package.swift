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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.41.0/Realm.xcframework.zip",
      checksum: "9fe4b81ef7060871738326ef431a5de8c7911bc58bfeb41daed57831ce6b98a5"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.41.0/RealmSwift.xcframework.zip",
      checksum: "cbf1b5d44fa8600a7085101659a081b3f3a2403c836487c39171e25e27759b52"
    )
    ]
)