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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.0/Realm.xcframework.zip",
      checksum: "2816848d610dbbf5a2ae0165f447613ab1e15e21b9638876687a8a9cb6489126"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.49.0/RealmSwift.xcframework.zip",
      checksum: "1a10de818ab2891e2b2acc93f03bcdaa4b251c85e7eac54f1b603d827b2a3e7b"
    )
    ]
)