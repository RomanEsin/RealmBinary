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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.3/Realm.xcframework.zip",
      checksum: "469774ecef7744e0b64a3b18b7c242ff05f0d4584d8a5c171caa8ab102a628c8"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.3/RealmSwift.xcframework.zip",
      checksum: "475d7a2a085002452adaaa4b7aa21ee0def42e4e4140372655c88b2a7689c086"
    )
    ]
)