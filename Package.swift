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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.48.0/Realm.xcframework.zip",
      checksum: "9c77ca4edf41ece73eab0806938f860fdf07ed35d715dc1acf9d0b64095f529b"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.48.0/RealmSwift.xcframework.zip",
      checksum: "5d92e9788a12d7348ac9b52a5570e0d3da9dbe95328f5326a2a3861cd4b1091a"
    )
    ]
)