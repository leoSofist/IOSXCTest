//
//  SingUpDefinitions.swift
//  LoginAppUITests
//
//  Created by leonardo.almeida on 06/03/23.
//

import XCTest

protocol SingUp {
    func testSingUpWithSuccess()
}


extension SetupTestBase {
    
    func givenThatICreateAccout() {
        XCTContext.runActivity(named: "Given that I create a Count") { _ in
            helper.tapSampleStaticText(text:"tap_singup")
        }
    }
    
    func andThatIEnterMyData() {
        XCTContext.runActivity(named: "And that I enter the user's data") { _ in
            helper.sendKeysNameTextFields(name: "singUp_username", value: "leonardo.almeida@sofist.co")
            helper.sendKeysSecureTextFields(name: "singUp_password", value: "123456")
            helper.sendKeysSecureTextFields(name: "singUp_rePassword", value: "123456")
        }
    }
    
    func whenIClickSingUP() {
        XCTContext.runActivity(named: "When I click continue") { _ in
            helper.tapElementButtons(idn: "singUp_button")
        }
    }
    

    
}
