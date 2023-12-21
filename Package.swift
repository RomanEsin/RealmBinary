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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.46.0/Realm.xcframework.zip",
      checksum: "659b6dd0a159840671bb79ecc659d6a68214aad19fff27f685ef5c9f213140c6"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.46.0/RealmSwift.xcframework.zip",
      checksum: "b696e95f039564af52a9e4fab41502c1022aed852c31c194e2193ab66be79670"
    )
    ]
)