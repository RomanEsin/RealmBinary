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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.3/Realm.xcframework.zip",
      checksum: "524cfd290b67a675274da8467b73b4920a2ff6d71601fd700f5f72e29a6f4c4c"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.38.3/RealmSwift.xcframework.zip",
      checksum: "12e5cc1d6c823679388ad2d891537747da1fb1eb30a845d29b8caca5eb25682c"
    )
    ]
)