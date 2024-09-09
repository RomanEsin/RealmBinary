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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.0/Realm.xcframework.zip",
      checksum: "cb3d88ecc8d09df9627755ccbd068e184c79bb39b8cd40364f86a931b77955f3"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.0/RealmSwift.xcframework.zip",
      checksum: "6cf460e9a5fa83e0b6066d164f92d3ba8ff6798eafbac8ca78cfcc392807baa0"
    )
    ]
)