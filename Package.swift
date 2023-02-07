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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.35.0/Realm.xcframework.zip",
      checksum: "7ca818b92eefa9aaf7ea739fc791cf537e88ebb7e870ad5ec95076428d7edaf8"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.35.0/RealmSwift.xcframework.zip",
      checksum: "0a9b99256412aec0874084d2cf77245ce39cdc0a53daf4469d265bb372c505b1"
    )
    ]
)