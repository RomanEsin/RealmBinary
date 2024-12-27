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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.1/Realm.xcframework.zip",
      checksum: "22cf52930b53ab6c9b591cf2f358f6e360169ffcc3ea884a3788099df559aff9"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.1/RealmSwift.xcframework.zip",
      checksum: "26bcc19222f76ad860fd068f1acce3cf903c5b1920ed20d1bbf49ffd89ef0096"
    )
    ]
)