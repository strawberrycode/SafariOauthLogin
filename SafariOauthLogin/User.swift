//
//  User.swift
//  SafariOauthLogin
//
//  Created by Catherine Schwartz on 27/07/2015.
//  Copyright © 2015 StrawberryCode. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    
    var firstName = ""
    var lastName = ""
    var userName = ""
    var instagramAccessToken = ""
    var instagramId = ""
    
    init(json: JSON) {
        
        if let accessToken = json["access_token"].string, userID = json["user"]["id"].string {
            
            self.instagramAccessToken = accessToken
            self.instagramId = userID
            
            let instagramUser = json["user"]
            let fullName = instagramUser["full_name"].stringValue
            var names = fullName.componentsSeparatedByString(" ")
            
            if (names.count > 0) {
                self.firstName = names[0]
            }
            if (names.count > 1) {
                self.lastName = names[1]
            }
            if (names.count > 2) {
                self.lastName = names[names.count-1]
            }
            
            self.userName = instagramUser["username"].stringValue
        }
    }
    
    
}