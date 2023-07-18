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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.41.1/Realm.xcframework.zip",
      checksum: "cc85722e1e795d5efd61181196ec7be26a901aa5a17f90895070bf60b10bc843"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.41.1/RealmSwift.xcframework.zip",
      checksum: "138dca747d979ca05d53efcc74e4218e2d7d7d9824ebce1b11144cbca3ae8fa2"
    )
    ]
)