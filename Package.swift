// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApMobileSDK",
            targets: ["ApMobileSDK"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.1/ApMobileSDK.xcframework.zip",
            checksum: "7e859ac1fac5cb4444fee0891e8822af1a2bd519e0e710bfa977aa735881fb07"
        ),
        .target(
          name: "Sources",
          dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
          ],
          path: "Sources"
        )
    ]
)
