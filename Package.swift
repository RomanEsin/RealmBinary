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
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.2/Realm.xcframework.zip",
      checksum: "0eb166672d3df8adc0b9cede9d9f6ff2eec45d419da01fcf3bae2bc78844c6ab"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/RomanEsin/RealmBinary/releases/download/v20.0.2/RealmSwift.xcframework.zip",
      checksum: "53477e8c26916a213ba31beaca803fa34165bbbfac80823faec1820cc7de6a92"
    )
    ]
)