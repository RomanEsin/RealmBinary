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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.1/Realm.xcframework.zip",
      checksum: "268165e7a5d52ce1ace339af79e241d2004fbcfe9a7fab8cb02cb528c41e4daa"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.1/RealmSwift.xcframework.zip",
      checksum: "83e070c2a8450a10e1f8e48cdaba9cd43fc15cb4cdb82bb55be8fa75b728ae9a"
    )
    ]
)