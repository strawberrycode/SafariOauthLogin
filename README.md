# SafariOauthLogin
SFSafariViewController and OAuth: a simple login example with Instagram on iOS, written in Swift 2

## The 3-steps install

1. Get your OAuth `client_id` and `client_secret` and your redirect url on https://instagram.com/developer/
2. Add your keys and redirect URI to `Auth.swift`
```
let INSTAGRAM_CLIENT_ID = ""
let INSTAGRAM_CLIENT_SECRET = ""
let INSTAGRAM_REDIRECT_URL = ""
```
And add your redirect URI to `info.plist`
```
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>com.strawberrycode.SafariOauthLogin</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>PLACE_URI_HERE</string>
        </array>
    </dict>
</array>
```
3. If you haven't got Cocoapods installed, check here to know what to do: https://guides.cocoapods.org/using/getting-started.html
  then ```$ pod install```

## Compatibility
min: iOS 9 - Xcode 7 beta 4

## More about this project

_Coming soon_

## That's all folks!

_Happy coding :)_
