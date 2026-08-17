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
        "https://github.com/RevContent/revcontent-ios-sdk/releases/download/0.3.1/RevcontentSDK.xcframework.zip",
      checksum: "11885beeec24863cc8c4687a96bf652244b3422b06bc16519f3e5f3ded88dc97"
    )
  ]
)
