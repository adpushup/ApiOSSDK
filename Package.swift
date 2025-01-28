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
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.1/ApMobileSDK.xcframework.zip",
            checksum: "922a399dabf979fb561d5accf05d012287e4a6b3de6c99513f5bd938565343f1"
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
