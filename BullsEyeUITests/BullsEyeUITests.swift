//
//  BullsEyeUITests.swift
//  BullsEyeUITests
//
//  Created by Lyle Christianne Jover on 2/7/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

class BullsEyeUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStyleSwitch() {
        // given
        let slideButton = app.segmentedControls.buttons["Slide"]
        let typeButton = app.segmentedControls.buttons["Type"]
        let slideLabel = app.staticTexts["Get as close as you can to: "]
        let typeLabel = app.staticTexts["Guess where the slider is: "]
        
        // then
        if slideButton.isSelected {
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
            
            typeButton.tap()
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
        } else if typeButton.isSelected {
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
            
            slideButton.tap()
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
        }
    }
    
}
