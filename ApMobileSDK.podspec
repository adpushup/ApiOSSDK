

Pod::Spec.new do |spec|

  spec.name         = "ApMobileSDK"
  spec.version      = "0.0.1"
  spec.summary      = "ApMobileSDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps"
  spec.description  = "ApMobileSDK is easy to implement SDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps it also provides in built logging functionality."
  spec.homepage     = "https://github.com/adpushup/ApiOSSDK"
  spec.license      = { :type => "Proprietary", :text => "Private license" }
  spec.author       = { "rishh18" => "rishabh.tripathi@adpushup.com" }
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/adpushup/ApiOSSDK.git", :tag => "#{spec.version}" }
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "Sources/ApMobileSDK.xcframework"

end