// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BASwiftUIData",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BASwiftUIData",
            targets: ["BASwiftUIData"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/bryan1anderson/BAUtilities", .branch("master")),
    .package(url: "https://github.com/marmelroy/PhoneNumberKit", from: "3.0.0"),
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.3"),
    .package(url: "https://github.com/kean/Nuke", from: "9.1.1"),
    .package(url: "https://github.com/utahiosmac/Marshal", from: "1.2.8"),
    .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0"),
        .package(url: "https://github.com/ashleymills/Reachability.swift", from: "5.0.0"),
        .package(url: "https://github.com/kean/FetchImage", from: "0.2.1")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BASwiftUIData",
            dependencies: ["PhoneNumberKit", "Alamofire", "Nuke", "Marshal", "EMUtilities", "SwiftyJSON", "Reachability"]),
        .testTarget(
            name: "BASwiftUIDataTests",
            dependencies: ["BASwiftUIData"]),
    ]
)
