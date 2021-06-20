//
//  BMICalcTests.swift
//  BMICalcTests
//
//  Created by Ilya Zhdaney on 20.06.2021.
//

import XCTest
@testable import BMICalc

class BMICalcTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testVerifyValue_1(){
        let bmi = Bmi(age: 18, height: 170, weight: 77)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertTrue(act)
    }
    
    func testVerifyValue_2(){
        let bmi = Bmi(age: 164, height: 9870, weight: 4947)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertTrue(act)
    }
    
    func testVerifyValue_3(){
        let bmi = Bmi(age: 0, height: 9870, weight: 4947)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_4(){
        let bmi = Bmi(age: 0, height: 9870, weight: 4947)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_5(){
        let bmi = Bmi(age: 19, height: 0, weight: 4947)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_6(){
        let bmi = Bmi(age: 19, height: 198, weight: 0)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_7(){
        let bmi = Bmi(age: -19, height: 198, weight: 90)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_8(){
        let bmi = Bmi(age: 19, height: -198, weight: 168)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testVerifyValue_9(){
        let bmi = Bmi(age: 19, height: 198, weight: -980)
        
        bmi.VerifyValue()
        
        let act = bmi.isVerify
        
        XCTAssertFalse(act)
    }
    
    func testCaclulateBmi_1(){
        let bmi = Bmi(age: 19, height: 198, weight: 177)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "45.15"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_2(){
        let bmi = Bmi(age: 18, height: 198, weight: 177)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_3(){
        let bmi = Bmi(age: 23, height: 0, weight: 177)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_4(){
        let bmi = Bmi(age: 23, height: 180, weight: 0)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_5(){
        let bmi = Bmi(age: 0, height: 180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_6(){
        let bmi = Bmi(age: 0, height: 180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_7(){
        let bmi = Bmi(age: -45, height: 180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_8(){
        let bmi = Bmi(age: 45, height: -180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testCaclulateBmi_9(){
        let bmi = Bmi(age: 45, height: 180, weight: -49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        
        let act = bmi.bmiResult
        let exp = "0.0"
        
        XCTAssertEqual(act, exp)
    }
    
    func testChangeColorAndText_1(){
        let bmi = Bmi(age: 18, height: 180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 0
        
        let actText = bmi.bmiResultText
        let expText = "You must be over 18 years old."
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_2(){
        let bmi = Bmi(age: 0, height: 180, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 0
        
        let actText = bmi.bmiResultText
        let expText = "Please try again"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_3(){
        let bmi = Bmi(age: 19, height: 0, weight: 49)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 0
        
        let actText = bmi.bmiResultText
        let expText = "Please try again"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_4(){
        let bmi = Bmi(age: 19, height: 180, weight: 0)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 0
        
        let actText = bmi.bmiResultText
        let expText = "Please try again"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_5(){
        let bmi = Bmi(age: 19, height: 180, weight: 40)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 1
        
        let actText = bmi.bmiResultText
        let expText = "Underweight"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_6(){
        let bmi = Bmi(age: 19, height: 180, weight: 70)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 2
        
        let actText = bmi.bmiResultText
        let expText = "Normal"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }
    
    func testChangeColorAndText_7(){
        let bmi = Bmi(age: 19, height: 180, weight: 150)
        
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        let actColor = bmi.Color
        let expColor = 0
        
        let actText = bmi.bmiResultText
        let expText = "Overweight"
        
        
        XCTAssertEqual(actColor, expColor)
        XCTAssertEqual(actText, expText)
    }

}
