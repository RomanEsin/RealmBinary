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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.47.0/Realm.xcframework.zip",
      checksum: "a58be4f3c4e18521be983257038d00128cd0ba084365389c8e7f40248e917044"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v10.47.0/RealmSwift.xcframework.zip",
      checksum: "52f6c4306c7e86498de280f6295fc03868116fe407d43ad495610c844eeffd95"
    )
    ]
)