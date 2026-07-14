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
        "https://github.com/RevContent/revcontent-ios-sdk/releases/download/0.1.3/RevcontentSDK.xcframework.zip",
      checksum: "3bdfb74bbb456390c31350f563524264144cbaa912158b43fdf6a76d53e4d56e"
    )
  ]
)
