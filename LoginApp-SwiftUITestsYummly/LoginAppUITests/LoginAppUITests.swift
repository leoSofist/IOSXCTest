//
//  LoginAppUITests.swift
//  LoginAppUITests
//
//  Created by leonardo.almeida on 03/03/23.
//

import XCTest

final class LoginAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {

        let app = XCUIApplication()
        app.launch()
        
        let campoEmail = app.textFields["email"]
        campoEmail.tap()
        campoEmail.typeText("leonardo.almeida@sofist.co")
        campoEmail.typeText("\n")
        
        // Escrevendo sobre o campo de senha.
        let campoSenha = app.secureTextFields["pass"]
        campoSenha.tap()
        campoSenha.typeText("1234565")
        campoSenha.typeText("\n")
        
        // Clicando sobre o botao continuar
        let botaoContinuar = app.buttons["login_button"]
        botaoContinuar.tap()
        
        

        
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
