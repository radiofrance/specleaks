// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SpecLeaks",    
    platforms: [
      .iOS(.v10)
    ],
    products: [        
        .library(name: "SpecLeaks", targets: ["SpecLeaks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "8.0.7"),
    ],
    targets: [     
        .target(name: "SpecLeaks", dependencies: ["Nimble"], path: "SpecLeaks/Classes/"),
    ],
    swiftLanguageVersions: [.v5]
)