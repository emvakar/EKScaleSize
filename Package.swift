// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EKScale",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "EKScale", targets: ["EKScale"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "EKScale", dependencies: []),
        .testTarget(name: "EKScaleTests", dependencies: ["EKScale"]),
    ]
)
