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
        "https://github.com/RevContent/revcontent-ios-sdk/releases/download/0.3.0/RevcontentSDK.xcframework.zip",
      checksum: "63648b8d6266ff1a21551860a8583dff8e1016a37afe3af21564d4b31cbe7bea"
    )
  ]
)
