// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "PhotoSlider",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "PhotoSlider", targets: ["PhotoSlider"])
    ],
    dependencies: [
        .package(url: "git@github.com:onevcat/Kingfisher.git", from: "6.3.1")
    ],
    targets: [
        .target(
            name: "PhotoSlider",
            dependencies: ["Kingfisher"],
            path: "Sources",
            resources: [
                .process("PhotoSlider.xcassets")
            ]
        )
    ]
)
