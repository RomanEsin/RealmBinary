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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.0/Realm.xcframework.zip",
      checksum: "606bc2738550f9a86e8c133aa3d81d8efdca90b279da1decadb97a8d8c48a0d9"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.37.0/RealmSwift.xcframework.zip",
      checksum: "950364250d42f439bf278cafa62322b701026b087a444b00f5b812e973bb9a79"
    )
    ]
)