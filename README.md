# SafariOauthLogin
SFSafariViewController and OAuth: a simple login example with Instagram on iOS, written in Swift 2

## The 3-steps install

* Get your OAuth `client_id` and `client_secret` and your redirect url on https://instagram.com/developer/
* Add your keys and redirect URI to `Auth.swift`
```
let INSTAGRAM_CLIENT_ID = ""
let INSTAGRAM_CLIENT_SECRET = ""
let INSTAGRAM_REDIRECT_URL = ""  // example: SafariOauthLogin:// or http://strawberrycode.com
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
            <string>PLACE_APP_NAME_HERE</string> // example: SafariOauthLogin
        </array>
    </dict>
</array>
```
Use the app name set in your project, for example: `SafariOauthLogin`

* If you haven't got Cocoapods installed, check here to know what to do: https://guides.cocoapods.org/using/getting-started.ht 
  then `$ pod install`

###Note:###
`INSTAGRAM_REDIRECT_URL` is one of the URIs you put in the field `Valid redirect URIs` in the Instagram Developer Portal when you create a new Client ID. It can be a website URL or an app scheme like `SafariOauthLogin://`. 
If you want the login to redirect to your app, then put the app scheme there. 

## Compatibility
min: iOS 9 - Xcode 7 beta 4   

## More about this project

Read the article: [SFSafariViewController and OAuth – the Instagram example](http://bit.ly/1IrHe8q)

## That's all folks!

_Happy coding :)_
