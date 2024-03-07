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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.1/Realm.xcframework.zip",
      checksum: "7099ce591c414608db29c4497b42726b6c81d3a652e4e31d5354deb9c4ee7864"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.1/RealmSwift.xcframework.zip",
      checksum: "c73abcc08ea1c4a78472e33163f1875698ba5c28a9fc168ff91d84be6dd58d66"
    )
    ]
)