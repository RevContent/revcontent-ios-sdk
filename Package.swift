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
      checksum: "5cf9902f5fa897b27c3b09da674e0d32d8921ea4b8e966fc3fc1c693027a6201"
    )
  ]
)
