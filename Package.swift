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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.44.0/Realm.xcframework.zip",
      checksum: "1e555602e7328e90f2cbf508d9d1e1b9db9560e365c0997a96497c55b8a8f72d"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.44.0/RealmSwift.xcframework.zip",
      checksum: "6d9023a99b472f4cd8878b9f1b37c9b381303151bde4f493c647c7836441e3dd"
    )
    ]
)