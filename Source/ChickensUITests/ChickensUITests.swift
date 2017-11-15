//
//  ChickensUITests.swift
//  ChickensUITests
//
//  Created by Alexander Yakovlev on 3/21/17.
//  Copyright © 2017 Alexander Yakovlev. All rights reserved.
//

import XCTest

class ChickensUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    
    // We send a command line argument to our app,
    // to enable it to reset its state
    XCUIApplication().launchArguments.append("--uitesting")
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testMainUI() {
    let nameTextField = XCUIApplication().textFields["sumTextfield"]
    nameTextField.tap()
    nameTextField.typeText("100")
  }
}
