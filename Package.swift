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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.3/Realm.xcframework.zip",
      checksum: "0c9c8cc1e3f02e7183ba5ab299e899da949e732e056fcbb53b56ed7e8aee9310"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.3/RealmSwift.xcframework.zip",
      checksum: "c33aee7721f54e348be5fa68830d262bb597c940845098b9582270a16c4d27fa"
    )
    ]
)