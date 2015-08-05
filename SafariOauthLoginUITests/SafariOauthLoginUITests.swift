//
//  SafariOauthLoginUITests.swift
//  SafariOauthLoginUITests
//
//  Created by Catherine Schwartz on 27/07/2015.
//  Copyright © 2015 StrawberryCode. All rights reserved.
//

import XCTest

class SafariOauthLoginUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
     func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // if the user is already logged in on Safari
        
        XCUIDevice.sharedDevice().orientation = .Portrait
        let app = XCUIApplication()
        app.buttons["Login with Instagram"].tap()
        
        let label: XCUIElement = app.staticTexts["Welcome FIRST_NAME, you are logged in with the Instagram user: USERNAME"]
        let predicate = NSPredicate(format: "exists == 1")
        
        self.expectationForPredicate(predicate, evaluatedWithObject: label, handler: nil)
        self.waitForExpectationsWithTimeout(5, handler: nil)
    }
}
