//
//  Untitled.swift
//  ApMobileSDK
//
//  Created by Rishabh Tripathi on 23/01/25.
//

// xcodebuild archive \
// -workspace ApMobileSDK.xcworkspace \
// -scheme ApMobileSDK \
// -configuration Release \
// -archivePath "./build/iOS" \
// -sdk iphoneos \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild archive \
// -workspace ApMobileSDK.xcworkspace \
// -scheme ApMobileSDK \
// -configuration Release \
// -archivePath "./build/iOSSimulator" \
// -sdk iphonesimulator \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild -create-xcframework \
//     -framework "./build/iOS.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//     -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//     -output "./build/ApMobileSDK.xcframework"

// zip -r "./build/ApMobileSDK.xcframework.zip" "./build/ApMobileSDK.xcframework"