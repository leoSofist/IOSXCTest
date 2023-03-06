//
//  LoginAppUITests.swift
//  LoginAppUITests
//
//  Created by leonardo.almeida on 03/03/23.
//

import XCTest

final class LoginAppUITests: XCTestCase {

    override func setUpWithError() throws {
   
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
  
    }

    func testExample() throws {

        let app = XCUIApplication()
        app.launch()
        
        let txtEmail = app.textFields["email"]
        txtEmail.tap()
        txtEmail.typeText("leonardo.almeida@sofist.co")
        txtEmail.typeText("\n")
        
        // Escrevendo sobre o campo de senha.
        let txtPassword = app.secureTextFields["pass"]
        txtPassword.tap()
        txtPassword.typeText("1234565")
        txtPassword.typeText("\n")
        
        // Clicando sobre o botao continuar
        let btn_login = app.buttons["login_button"]
        btn_login.tap()
        
        

        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
