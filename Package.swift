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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.2/Realm.xcframework.zip",
      checksum: "458b8df6c66d6c90c7048d06be2aa26307105bf662443ba1f7221e1a14e5f416"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.2/RealmSwift.xcframework.zip",
      checksum: "49ba7c640dcab1ebab619590d5d6155af088b1bd20a4decb224817e2c3be1675"
    )
    ]
)