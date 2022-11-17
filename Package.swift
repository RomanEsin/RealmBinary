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
            targets: ["RealmSwift"])
    ],
    dependencies: [
    ],
    targets: [
            .binaryTarget(
      name: "Realm",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.32.3/Realm.xcframework.zip",
      checksum: "b454140a1a654ba006cc7d98ce0b78462d1c47e16c40ff33cd777f60bffcfbce"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.32.3/RealmSwift.xcframework.zip",
      checksum: "b3bf5c1f9d3d1fb8a31affdd539c8a741905bc7a1b0eda4781d7e35b19e8fbf7"
    )
    ]
)