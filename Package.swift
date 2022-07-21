// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "JWT",
  platforms: [
    .macOS(.v10_12), .iOS(.v12)
  ],
  products: [
    .library(
      name: "JSONWebToken",
      targets: ["JWT"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift", .upToNextMajor(from: "1.5.1"))
  ],
  targets: [
    .target(name: "JWT", dependencies: ["CryptoSwift"]),
    .testTarget(name: "JWTTests", dependencies: ["JWT"]),
  ]
)
