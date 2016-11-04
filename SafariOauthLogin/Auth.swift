//
//  Auth.swift
//  SafariOauthLogin
//
//  Created by Catherine Schwartz on 27/07/2015.
//  Copyright © 2015 StrawberryCode. All rights reserved.
//

import Foundation
import Alamofire


let INSTAGRAM_CLIENT_ID = ""
let INSTAGRAM_CLIENT_SECRET = ""
let INSTAGRAM_REDIRECT_URL = ""


// Inspired by: https://github.com/MoZhouqi/PhotoBrowser

struct AuthInstagram {
    
    enum Router: URLRequestConvertible {
        /// Returns a URL request or throws if an `Error` was encountered.
        ///
        /// - throws: An `Error` if the underlying `URLRequest` is `nil`.
        ///
        /// - returns: A URL request.
        public func asURLRequest() throws -> URLRequest {
            // follow example here: http://stackoverflow.com/a/39414724
            
            let (path, parameters): (String, [String: AnyObject]) = {
                switch self {
                case .popularPhotos (let userID, let accessToken):
                    let params = ["access_token": accessToken]
                    let pathString = "/v1/users/" + userID + "/media/recent"
                    return (pathString, params as [String : AnyObject])
                    
                case .requestOauthCode:
                    _ = "/oauth/authorize/?client_id=" + Router.clientID + "&redirect_uri=" + Router.redirectURI + "&response_type=code"
                    return ("/photos", [:])
                }
            }()
            
            let BaeseURL = URL(string: Router.baseURLString)
            let URLRequest = Foundation.URLRequest(url: BaeseURL!.appendingPathComponent(path))
            return try Alamofire.URLEncoding.default.encode(URLRequest, with: parameters)
        }

        
        static let baseURLString = "https://api.instagram.com"
        static let clientID = INSTAGRAM_CLIENT_ID
        static let redirectURI = INSTAGRAM_REDIRECT_URL
        static let clientSecret = INSTAGRAM_CLIENT_SECRET
        static let authorizationURL = URL(string: Router.baseURLString + "/oauth/authorize/?client_id=" + Router.clientID + "&redirect_uri=" + Router.redirectURI + "&response_type=code")!
        
        case popularPhotos(String, String)
        case requestOauthCode
        
        static func requestAccessTokenURLStringAndParms(_ code: String) -> (URLString: String, Params: [String: AnyObject]) {
            let params = ["client_id": Router.clientID, "client_secret": Router.clientSecret, "grant_type": "authorization_code", "redirect_uri": Router.redirectURI, "code": code]
            let pathString = "/oauth/access_token"
            let urlString = AuthInstagram.Router.baseURLString + pathString
            return (urlString, params as [String : AnyObject])
        }
    }
    
}
