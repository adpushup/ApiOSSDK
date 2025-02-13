//
//  Untitled.swift
//  ApMobileSDK
//
//  Created by Rishabh Tripathi on 23/01/25.
//

// xcodebuild archive \
// -workspace ApMobileSDK.xcworkspace \
// -scheme ApMobileSDK \
// -destination "generic/platform=iOS" \
// -archivePath "./build/iOS" \
// -sdk iphoneos \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild archive \
// -workspace ApMobileSDK.xcworkspace \
// -scheme ApMobileSDK \
// -destination "generic/platform=iOS Simulator" \
// -archivePath "./build/iOSSimulator" \
// -sdk iphonesimulator \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild -create-xcframework \
//     -framework "./build/iOS.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//     -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//     -output "./build/ApMobileSDK.xcframework"

// zip -r "./build/ApMobileSDK.xcframework.zip" "./build/ApMobileSDK.xcframework"

// lipo -info ApMobileSDK.xcframework/ios-arm64/ApMobileSDK.framework/ApMobileSDK
// lipo -info ApMobileSDK.xcframework/ios-arm64_x86_64-simulator/ApMobileSDK.framework/ApMobileSDK