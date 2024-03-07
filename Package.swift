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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.2/Realm.xcframework.zip",
      checksum: "7f229ed97b9df12b1d37649a0e77a4617ad3b088a10701bdfeba16395fd112bf"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.40.2/RealmSwift.xcframework.zip",
      checksum: "5b1977889d208e9694c27769f856e9c711acc500b856bc9e386dd8754788175f"
    )
    ]
)