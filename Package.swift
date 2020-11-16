// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "C",
  products: [
    .library(name: "C", targets: ["C"]),
  ],
  targets: [
    .target(name: "C", dependencies: []),
  ]
)
