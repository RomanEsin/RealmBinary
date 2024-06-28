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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.1/Realm.xcframework.zip",
      checksum: "50e64537499159b6937790012af3fd9564dcc5e4d21ead88f68e3209ad4585e0"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.52.1/RealmSwift.xcframework.zip",
      checksum: "80b3ecb5aae172c1925b3290219e43efc6b024d1f197b27d83e87f4180f92a92"
    )
    ]
)