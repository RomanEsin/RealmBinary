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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.1/Realm.xcframework.zip",
      checksum: "17169c08ddaa4790b0f4d059d21dbb7926feb1c43867ed2cce1b95a1940e928e"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.54.1/RealmSwift.xcframework.zip",
      checksum: "e3bbb106813dc0fa35662e780782fd8bf3be2213a8fef3a25e1e17ed1cf46e2e"
    )
    ]
)