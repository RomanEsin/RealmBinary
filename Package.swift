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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.50.0/Realm.xcframework.zip",
      checksum: "20f56cd7a1c46c42d679303b6f2a20000f64763e76c6e168e53702de3db8ea75"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.50.0/RealmSwift.xcframework.zip",
      checksum: "ef07acf72ed1875244f3e7cce06655701618cdcd07849ec7bd6fa4d79780f152"
    )
    ]
)