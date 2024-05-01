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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.3/Realm.xcframework.zip",
      checksum: "001ca0b0a169c24d3dc55076821458136057e80765b523c7293cfd39c6a6627a"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.3/RealmSwift.xcframework.zip",
      checksum: "58c56951d4b32e2c2bebd94bef1595c662396dccdffb707d8fc04247220ff5e2"
    )
    ]
)