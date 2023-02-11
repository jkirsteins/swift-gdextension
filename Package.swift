// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftlib",
    platforms: [
            .macOS(.v13),
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swiftlib",
            type: .dynamic,
            targets: ["swiftlib"]),
        .executable(name: "bindinggen", targets: ["bindinggen"]),
        .library(
            name: "embeddedtest",
            type: .dynamic,
            targets: ["embeddedtest"]),
        .library(
            name: "embeddedtest2",
            type: .dynamic,
            targets: ["swiftlibTests"])
    ],
    dependencies: [
        .package(url: "https://github.com/CoreOffice/XMLCoder.git", .upToNextMajor(from: "0.9.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .systemLibrary(name: "godot-native"),
        .executableTarget(
            name: "bindinggen",
            dependencies: [
                "XMLCoder"
            ],
            resources: [
                .copy("extension_api.json"),
                .copy("docs/")
            ]),
        .target(
            name: "swiftlib",
            dependencies: ["godot"]),
        .target(
            name: "embeddedtest",
            dependencies: ["godot"]
        ),
        .target(
            name: "godot",
            dependencies: ["godot-native"]),
        .testTarget(
            name: "swiftlibTests",
            dependencies: ["swiftlib"]),
    ]
)
