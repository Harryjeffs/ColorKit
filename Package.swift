// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorKit",
	defaultLocalization: "en",
    platforms: [
		.iOS(.v15)
    ],
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]
		)
    ],
    targets: [
        .target(
            name: "ColorKit",
            path: "ColorKit/ColorKit",
			resources: [
				.process("Localization")
			]
		),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"],
            path: "ColorKit/ColorKitTests",
			resources: [
				.process("Resources")
			]
		)
    ]
)
