//
//  SetupTestBase.swift
//  LoginAppUITests
//
//  Created by leonardo.almeida on 06/03/23.
//

import XCTest

class SetupTestBase: XCTestCase {
    
    let app = XCUIApplication()
    let helper = MainUIHelper()

   
    
    
    override func setUp() {
        
        super.setUp()
        continueAfterFailure = false
        app.launch()
  
        
        
        
        
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
        
        
    }
    
}
