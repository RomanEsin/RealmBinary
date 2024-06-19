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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.0/Realm.xcframework.zip",
      checksum: "7d841ac45f6e37bd7a61a661268b4e5de5fddb373b1e791e0f48f508efe501c7"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.0/RealmSwift.xcframework.zip",
      checksum: "7589aa7aa19bc43a594265fbc66f0cc739fde4e942d56ce85a68f92e367284bb"
    )
    ]
)