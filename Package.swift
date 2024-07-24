// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AFOAuth2Manager",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "AFOAuth2Manager",
            targets: ["AFOAuth2Manager"]),
    ],
    dependencies: [
        .package(name: "AFNetworking", url: "https://github.com/sanghyeok-kim/AFNetworking.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "AFOAuth2Manager",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking")
            ],
            path: "AFOAuth2Manager"
        )
    ]
)
