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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.50.1/Realm.xcframework.zip",
      checksum: "cbd822292ca29b9364311c0f7017f5e12d03de706923451d357ee4e754ef04ad"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.50.1/RealmSwift.xcframework.zip",
      checksum: "a6907e8601647e7db4f80546da12ba0ac995d45dd3029914ea3fd489c918bb55"
    )
    ]
)