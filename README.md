# S3SwiftUIAppRater

S3SwiftUIAppRater is designed for SwiftUI and will remind your users to make a review for your app on the App Store.

## Getting Started

CocoaPods

S3SwiftUIAppRater is available through CocoaPods. To install it, simply add the following line to your Podfile:

```
pod 'S3SwiftUIAppRater'
```

## Usage
Setup in AppDelegate.swift

```
import S3SwiftUIAppRater

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

  S3SwiftUIAppRater.usesUntilPrompt = 3
  S3SwiftUIAppRater.launch()
  
  return true
}
```

## Licence
S3SwiftUIAppRater is available under the MIT license. See the LICENSE file for more info.
