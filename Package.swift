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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.2/Realm.xcframework.zip",
      checksum: "ba6621eb6736d36c840c069134a235f7f77cb302dd33176e5fcd80a1bbdb3366"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.2/RealmSwift.xcframework.zip",
      checksum: "eae05879518bc6e19a2255c22755a03889147a3a64a22506005b26fb6e666f4f"
    )
    ]
)