// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "RevcontentSDK",
  platforms: [
    .iOS(.v16)
  ],
  products: [
    .library(
      name: "RevcontentSDK",
      targets: ["RevcontentSDK"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "RevcontentSDK",
      url:
        "https://github.com/RevContent/revcontent-ios-sdk/releases/download/0.1.0/RevcontentSDK.xcframework.zip",
      checksum: "9b8dfa8d20c108129ee44ae95fef9ed996d63053581bba54d8ac0f3c2c170c3d"
    )
  ]
)
