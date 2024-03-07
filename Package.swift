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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.39.0/Realm.xcframework.zip",
      checksum: "9642727ae1fe190a6f962d7335b0be788a98f6d2d5f9711b61791dbf872363b9"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.39.0/RealmSwift.xcframework.zip",
      checksum: "ae1be3c70678a708d7b3200c3990d36da2c56ca11db74c47fb7e345f21d1de25"
    )
    ]
)