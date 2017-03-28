//
//  AC3_2_TDD_introTests.swift
//  AC3.2-TDD_introTests
//
//  Created by Annie Tung on 3/28/17.
//  Copyright © 2017 Annie Tung. All rights reserved.
//

import XCTest
@testable import AC3_2_TDD_intro

class AC3_2_TDD_introTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func countVowels(_ str: String) -> Int {
        return 0
    }
    
    func test_VowelCount_AnnieShouldReturnThree() {
        
        let viewController = ViewController()
        let testString = "Annie"
        let numberOfVowels = viewController.numberVowels(testString)
        XCTAssertEqual(numberOfVowels, 3, "Vowel count should be accurate!")//, file: "TDD_IntroTests.swift", line: 34)
        
//        let vowelCount = 3
//        let badVowelCount = 3
//        XCTAssert(vowelCount == badVowelCount, "We should get an accurate vowel count")
    }
    
    func test_CapitalizeFirstLetterInEachWord() {
        
        let viewController = ViewController()
        let testString = "this is a string"
        let expectedString = "This Is A String"
        
        // this will fail until you write the function for it
        let resultString = viewController.capitalizeFirstLetter(testString)
        
        XCTAssertEqual(expectedString, resultString, "First Letter of each word should be capitalized!")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure { // good way of checking for average performance!
            // Put the code you want to measure the time of here.
        }
    }
    
}
