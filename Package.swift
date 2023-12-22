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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.2/Realm.xcframework.zip",
      checksum: "c4da2722fe4e386813cdd07049ce2b4e75295e30ff08f26ff7b179f3f80623bc"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.45.2/RealmSwift.xcframework.zip",
      checksum: "bd6007c45eca121ba6505bc5b46dea4669da8eb65ccee2b5732b9f25b84709fc"
    )
    ]
)