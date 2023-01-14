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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.34.0/Realm.xcframework.zip",
      checksum: "fa873ffc59716600f7a83830e84935ce3f52f2d6529c27275f37068b52b6075e"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.34.0/RealmSwift.xcframework.zip",
      checksum: "baf0353acdd36b1f64df2172555c96d3bf6b2b86faf498cb558587e70fdb911e"
    )
    ]
)