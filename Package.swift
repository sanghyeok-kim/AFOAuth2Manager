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
            targets: ["AFOAuth2Manager"]
        )
    ],
    dependencies: [
        .package(
            name: "AFNetworking-SPM",
            url: "https://github.com/sanghyeok-kim/AFNetworking-SPM.git",
            .branch("master")
        )
    ],
    targets: [
        .target(
            name: "AFOAuth2Manager",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking-SPM")
            ],
            path: "AFOAuth2Manager",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("Security")
            ]
        )
    ]
)
