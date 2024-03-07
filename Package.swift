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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.2/Realm.xcframework.zip",
      checksum: "343fa8b25a1933c42d5cd500233ee88119917b476ff4055fd1865e740ca43b5f"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.42.2/RealmSwift.xcframework.zip",
      checksum: "51ab492389b5b0a207d7ff22099935379fd3c5b7a5f1dd4e18285be2dcf1ea3c"
    )
    ]
)