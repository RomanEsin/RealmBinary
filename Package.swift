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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.53.1/Realm.xcframework.zip",
      checksum: "d0587ede51b7bd0959a76add61d6c080654a757515986a77b71667289a5df379"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.53.1/RealmSwift.xcframework.zip",
      checksum: "bd3b6576fcdd64b8ad7d75bd9252b91ec7d1931d01b633a22e4762f65a0119ff"
    )
    ]
)