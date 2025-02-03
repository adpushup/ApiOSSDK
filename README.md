# ApMobileSDK
## **Get started -**

Follow this guide to get started with Ap Mobile iOS SDK.  
The Ap Mobile iOS SDK provides Ad formats like Smart Interstitial and Smart Rewarded Ads.  
The following document shows how to integrate Ap Mobile iOS SDK in your iOS App.  
You can use our demo apps as a reference project.  
Link - https://github.com/adpushup/ApiOSSDKDemo

## **Before you begin -**

iOS version **14.0** and higher.  
Xcode version **15.3** or higher.

**Get the following IDs from AdPushup:**

- **Ad Manager App Id:** For info.plist file.
- **Ap App Id**: Used in initialising Ap Mobile SDK.
- **Ap Placement Ids**: Each Ad Unit has a unique placement Id.

## **Import SDK in the App.**

- Importing from Cocoapods.
    - Just add this command in your Podfile.
    
          `pod 'ApMobileSDK', '~> 1.1.0'`
    - Then from the command line run:
    
          `pod install`
    - If **getting Sandbox issue** while importing through cocoapods, Go to Build setting of app target and search for "user script sandboxing" if it is "Yes" change it to "No".
    

- Importing from swift package manager.
    - In Xcode, install the ApMobileSDK Swift Package by navigating to **File > Add Packages.**
    - In the prompt that appears, search for the ApMobileSDK Swift Package GitHub repository.
        
        [https://github.com/adpushup/ApiOSSDK](https://github.com/adpushup/ApiOSSDK.git)
        
- Importing through ApMobileSDK.xcframework file (in case if above methods are not working).
    - **(Important)** This method is recomended for import the SDK in **ObjectiveC App**.
    - In the ApiOSSDK repo in the Sources folder there is a ApMobileSDK.xcframework file, Download it.
    - Drag and drop the ApMobileSDK.xcframework file in your project.

## **To integrate Ads in the App.**
You can follow this documentation Link - https://github.com/adpushup/ApiOSSDKDemo
