# Colendi WebView SDK

The Colendi Web View Software Development Kit.

# Table of Content
- [Overview](#overview)
- [Requirements](#requirements)
    - [General Requirements](#general-requirements)
    - [Permissions](#permissions)
- [Installation](#installation)
    - [Via CocoaPods](#via-cocoaPods)
- [Integration](#integration)
- [Author](#author)
- [LICENSE](#license)

# Overview

The Colendi Web View is a Software Development Kit developed by Colendians to enable fast and simple integration to Colendi World.

#  Requirements

## General Requirements
The minimum required iOS version for the SDK is:  
* iOS 11.0 or higher  

## Permissions

Colendi WebView SDK makes use of the device Camera and NFC. You will be required to have the following keys in your application's Info.plist file:

```xml
    <key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
	<array>
		<string>A0000002471001</string>
	</array>
	<key>NFCReaderUsageDescription</key>
	<string>This application requires access to NFC to  scan IDs.</string>
	<key>NSCameraUsageDescription</key>
	<string>This application requires access to your camera for scanning and uploading the document.</string>
```
**Note**: All keys will be required for app submission.

### Grant accesss to NFC
Enable the Near Field Communication Tag Reading capability in the target Signing & Capabilities. 

## Installation

### Via-Cocoapods

ColendiWebView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ColendiWebViewSDK'
```
also add after last end statement of Podfile:

```ruby
#add following lines end of podfile after last 'end'
post_install do |installer|     
  installer.pods_project.build_configurations.each do |config|
#if you have intel Mac you need to comment out following line 
    #config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
  end
end
```

Then, run the following command:

```bash
$ pod install
```

## Integration

```swift
import UIKit
import ColendiWebViewSDK

class ViewController: UIViewController, ColendiWebViewDelegate {
    
    var colendiView: ColendiWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colendiView = ColendiWebView(frame: self.view.frame)
        colendiView?.setDelegate(delegate: self)
        self.view.addSubview(self.colendiView!)

        //Change the 'URL' with colendi web app's url
        let url = URL(string: "URL")!
        
        colendiView?.loadUrl(url: url)
    }
    
    func messageCallback(message: String) {
        print(message)
    }
}

```

# Authors

[Gökberk Bardakçı](https://www.github.com/gokberkbar), [Uygar İşiçelik](https://www.github.com/uygar) from [Colendi](https://www.twitter.com/colendiapp)

# License

ColendiWebView is available under the GNU GENERAL PUBLIC LICENSE license. See the LICENSE file for more info.
