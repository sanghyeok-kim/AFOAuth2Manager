// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AFOAuth2Manager",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "AFOAuth2Manager",
            targets: ["AFOAuth2Manager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", .upToNextMajor(from: "4.0.0")),
    ],
    targets: [
        .target(
            name: "AFOAuth2Manager",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking")
            ],
            path: "AFOAuth2Manager",
            exclude: [],
            resources: [],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
