// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EKScaleSize",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "EKScaleSize", targets: ["EKScaleSize"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "EKScaleSize", dependencies: []),
        .testTarget(name: "EKScaleSizeTests", dependencies: ["EKScaleSize"]),
    ]
)
