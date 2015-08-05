//
//  SafariOauthLoginTests.swift
//  SafariOauthLoginTests
//
//  Created by Catherine Schwartz on 27/07/2015.
//  Copyright © 2015 StrawberryCode. All rights reserved.
//

import XCTest
import SwiftyJSON

@testable import SafariOauthLogin

class SafariOauthLoginTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testJsonName() {
        
        let json = JSON(["access_token": "",
                        "user":[
                            "username" : "",
                            "full_name" : "",
                            "profile_picture" : "",
                            "website" : "",
                            "id" : "",
                            "bio" : ""
            ]])
    
        let user = User(json: json)
        XCTAssertEqual(user.firstName, "", "First name")
        XCTAssertEqual(user.userName, "", "Username")
        XCTAssertNotEqual(user.instagramId, "", "id")
    }
    
}
