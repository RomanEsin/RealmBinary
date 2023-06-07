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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.1/Realm.xcframework.zip",
      checksum: "96ec717b96514f461165d92923d2977a3dd6c4d6f82861ac62aab2e95c9e2d9b"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.1/RealmSwift.xcframework.zip",
      checksum: "b8ddcf848197671a86e22c7c3217d838ced11098fe41dd62e677076265531247"
    )
    ]
)