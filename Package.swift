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
      checksum: "fae59eb8f04d065c6eff83c84747cdc5a588704e35b33e78298a060317ca743a"
    )
  ]
)
