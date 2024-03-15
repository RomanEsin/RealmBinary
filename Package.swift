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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.48.1/Realm.xcframework.zip",
      checksum: "9996541d2f34f8895ca7012935ff37d4a42f2974ce35ed7ad4bc9e4b110618e0"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.48.1/RealmSwift.xcframework.zip",
      checksum: "7ba1eb57f5c4694048cc72c9820572ff6eff60a714e49e3b05425a55683ba43d"
    )
    ]
)