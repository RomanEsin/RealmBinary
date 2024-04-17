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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.2/Realm.xcframework.zip",
      checksum: "309510ab85da0e8fac94f7ead82df7eba336eaedbe1401409d4eff3f4be9d762"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.2/RealmSwift.xcframework.zip",
      checksum: "788019459dec4101a40abd966aaf5dc17fc8b82b6c4f85cfea843812282b3661"
    )
    ]
)