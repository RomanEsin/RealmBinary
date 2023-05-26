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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.0/Realm.xcframework.zip",
      checksum: "00c1feb0b1851c82753db208cabec04a49f54117f061557a1891fbe191b67d8f"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.0/RealmSwift.xcframework.zip",
      checksum: "d4b560f892afe7b172af1d9c667d29a08607f4cb62043be1ad04dac125f5fc3f"
    )
    ]
)