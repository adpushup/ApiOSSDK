Pod::Spec.new do |spec|

  spec.name         = "ApMobileSDK"
  spec.version      = "1.1.9"
  spec.summary      = "ApMobileSDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps"
  spec.description  = "ApMobileSDK is easy to implement SDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps."
  spec.homepage     = "https://github.com/adpushup/ApiOSSDK"
  spec.license      = { :type => "Proprietary", :text => "LICENSE" }
  spec.author       = [{ "AdPushup" => "rishabh.tripathi@adpushup.com" }]
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/adpushup/ApiOSSDK.git", :tag => spec.version.to_s }
  spec.readme = 'https://github.com/adpushup/ApiOSSDK/blob/master/README.md'
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "Sources/ApiOSSDK/ApMobileSDK.xcframework"
  spec.dependency 'Google-Mobile-Ads-SDK'
  spec.requires_arc = true

end
