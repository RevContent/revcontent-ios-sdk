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
        "https://github.com/RevContent/revcontent-ios-sdk/releases/download/0.2.0/RevcontentSDK.xcframework.zip",
      checksum: "c6852f1e07e8550486809c8e6af6659f943e731ed6b395b3b349b4599479dc7d"
    )
  ]
)
