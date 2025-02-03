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
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.1.0/ApMobileSDK.xcframework.zip",
            checksum: "130b5cb22dc1b5fee2cd5e1314cdedb98bf61c383c4729d7e313441e9077399e"
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
