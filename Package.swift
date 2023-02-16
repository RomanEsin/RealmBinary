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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.36.0/Realm.xcframework.zip",
      checksum: "edf00b2dd1495bcaa936d835650c9af6cb0e64495c19df2e6f435e28e9968ded"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.36.0/RealmSwift.xcframework.zip",
      checksum: "eb2857c77cf877a0fbfa622b835e8394ea5891cf4dc91e516c5bc7940b461115"
    )
    ]
)