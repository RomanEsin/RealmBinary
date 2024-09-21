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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.0/Realm.xcframework.zip",
      checksum: "1f1116d2e05643b569609082d142d33b7da9807b07f16702a3f15e9fb627e866"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.0/RealmSwift.xcframework.zip",
      checksum: "d9a402f9bb75f5f82b5099d47321ae36fda202a13d5a781d33f63bd67cd1a747"
    )
    ]
)