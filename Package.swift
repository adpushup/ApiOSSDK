// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ApMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApiOSSDK",
            targets: ["ApiOSSDK"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.4/ApMobileSDK.xcframework.zip",
            checksum: "5a9bba49113cfaf6589d3fe678ca8d1634b9b792053855087882a89c31544ce1"
        ),
        .target(
          name: "ApiOSSDK",
          dependencies: [.target(name: "ApMobileSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
          ],
          path: "Sources/ApiOSSDK"
        )
    ]
)
