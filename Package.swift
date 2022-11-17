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
            targets: ["RealmSwift"])
    ],
    dependencies: [
    ],
    targets: [
            .binaryTarget(
      name: "Realm",
      url: "https://github.com/NikitaKosolapov/RealmBinaries/releases/download/v10.32.3/Realm.xcframework.zip",
      checksum: "7522ba88d2744ac59d9c25a7b138c7a0df539d2a5780d100d74c56fa292bbed0"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/NikitaKosolapov/RealmBinaries/releases/download/v10.32.3/RealmSwift.xcframework.zip",
      checksum: "cd19e4e724614d21146590d70b547a58aa55836c8e3aa1088b11194e6ba46d0d"
    )
    ]
)