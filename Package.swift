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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.0/Realm.xcframework.zip",
      checksum: "a40a8a9f7aedd581361e93e65ef3aca60025e58bfc7043f1a0f13e3b9723e37c"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.0/RealmSwift.xcframework.zip",
      checksum: "d489e81db27ee85dca836d17e767620050c7e5f7038956a0c3aa7d338b8d91a9"
    )
    ]
)