

Pod::Spec.new do |spec|

  spec.name         = "ApMobileSDK"
  spec.version      = "1.0.4"
  spec.summary      = "ApMobileSDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps"
  spec.description  = "ApMobileSDK is easy to implement SDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps it also provides in built logging functionality."
  spec.homepage     = "https://github.com/adpushup/ApiOSSDK"
  spec.license      = { :type => "Proprietary", :text => "LICENSE" }
  spec.author       = [{ "Adpushup" => "rishabh.tripathi@adpushup.com" }]
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/adpushup/ApiOSSDK.git", :tag => "1.0.4" }
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "Sources/ApiOSSDK/ApMobileSDK.xcframework"
  spec.static_framework = false

end
