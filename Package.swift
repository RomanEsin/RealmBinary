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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.3/Realm.xcframework.zip",
      checksum: "0e838599f84f674338f174eebfb74fe32f3623c60c77661d42817b2c6cfb5755"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.3/RealmSwift.xcframework.zip",
      checksum: "9df86ff1c694c447c242dd11cf6a37f987406001809d2debc66f79ea9da9e848"
    )
    ]
)