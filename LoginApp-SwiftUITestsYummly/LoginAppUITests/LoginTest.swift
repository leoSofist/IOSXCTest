import XCTest

class TestBbdExample: SetupTestBase, Login, SingUp {
    
    func testLoginWithSuccess() {
        givenThatIEnterMyData()
        whenIClickContinue()
        thenISeeTheLogin()
    }
    
    func testSingUpWithSuccess() {
        givenThatICreateAccout()
        andThatIEnterMyData()
        whenIClickSingUP()
    }
}
