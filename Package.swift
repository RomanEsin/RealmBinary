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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.1/Realm.xcframework.zip",
      checksum: "c0c54c5baf1a2e21c32e72de473425956d5d1a05d111035a0703fd9457496f36"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.1/RealmSwift.xcframework.zip",
      checksum: "5f4d0e3e27b6da229af41c6e36f15497e53b704bfc76af8aebae54878753cecf"
    )
    ]
)