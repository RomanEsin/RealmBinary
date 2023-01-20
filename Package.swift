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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.34.1/Realm.xcframework.zip",
      checksum: "2e0b460d0e7955491be50862b53303b68b5118ee07817cdb678ad6387dd52f10"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.34.1/RealmSwift.xcframework.zip",
      checksum: "f2fcf2f4fe8587e05ea5d850f3303221547013cd48643622389d2ce4c1df631d"
    )
    ]
)