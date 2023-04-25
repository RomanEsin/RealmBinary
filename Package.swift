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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.1/Realm.xcframework.zip",
      checksum: "cc1165187f418b6ab90a1c2bebf8ade5b6b36d7b819b09e0810d30b6ccc18be8"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.1/RealmSwift.xcframework.zip",
      checksum: "29853d5e53d0e489f1152dc30cbacd13c89a0df7a6bec5e84de1427f5bc68df1"
    )
    ]
)