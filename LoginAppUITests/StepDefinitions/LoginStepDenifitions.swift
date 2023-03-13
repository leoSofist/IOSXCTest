//
//  LoginStepDenifitions.swift
//  LoginAppUITests
//
//  Created by leonardo.almeida on 06/03/23.
//

import XCTest

protocol Login {
    func testLoginWithSuccess()
}

extension SetupTestBase {
    func givenThatIEnterMyData() {
        XCTContext.runActivity(named: "Given that I enter the user's data") { _ in
            helper.sendKeysNameTextFields(name: "login_username", value: "leonardo.almeida@sofist.co")
            helper.sendKeysSecureTextFields(name: "login_password", value: "123456")
        }
    }
    
    func whenIClickContinue() {
        XCTContext.runActivity(named: "When I click continue") { _ in
            helper.tapElementButtons(idn: "login_button")
        }
    }
    
    func thenISeeTheLogin() {
        XCTContext.runActivity(named: "Then I see the Login screen") { _ in
          
        }
    }
    
      
    
}
