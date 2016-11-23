//
//  SchoolReportUITests.swift
//  SchoolReportUITests
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import XCTest

class SchoolReportUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let navBarListOfMarks = app.navigationBars["List of Marks"]
        let navBarDetailedReport = app.navigationBars["Details Marks"]
        let detailedReportBut = app.tabBars.buttons["Detailed Report"]
        
        let listofMarksBut = app.tabBars.buttons["List of marks"]
        let addMarkButLM = navBarListOfMarks.buttons["Add"]
        let addMarkButDR = navBarDetailedReport.buttons["Add"]
        let saveButton = app.navigationBars["Add Mark"].buttons["Save"]
        let cancelButton = app.navigationBars["Add Mark"].buttons["Cancel"]
        
        let addMarkTestNameTxt = app.textFields["markAdd-testName-txt"]
        let addMarkValueTxt = app.textFields["markAdd-val-txt"]
        let addMarkSubjTxt = app.textFields["markAdd-subj-txt"]
        let addMarkCoefTxt = app.textFields["markAdd-coef-txt"]
        
        
        detailedReportBut.tap()
        addMarkButDR.tap()
        addMarkSubjTxt.tap()
        addMarkSubjTxt.typeText("Anglais")
        addMarkValueTxt.tap()
        addMarkValueTxt.typeText("15")
        addMarkCoefTxt.tap()
        addMarkCoefTxt.typeText("2")
        addMarkTestNameTxt.tap()
        addMarkTestNameTxt.typeText("Test 1")
        saveButton.tap()

        

    }
    
}
