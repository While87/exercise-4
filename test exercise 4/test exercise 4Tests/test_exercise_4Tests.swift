//
//  test_exercise_4Tests.swift
//  test exercise 4Tests
//
//  Created by Vladimir Gorbunov on 10.05.2021.
//

import XCTest
@testable import test_exercise_4

class test_exercise_4Tests: XCTestCase {
    
    let vm = ValidationManager()
    
    func testisValidLenght() {
        //need letters count between 3..32
        let result = vm.isValidLenght("a")
        let result1 = vm.isValidLenght("abc")
        let result2 = vm.isValidLenght("abcdefg")
        let result3 = vm.isValidLenght("abcdefgabcdefgabcdefgabcdefgabcdefg")
        
        XCTAssertEqual(result, false)
        XCTAssertEqual(result1, true)
        XCTAssertEqual(result2, true)
        XCTAssertEqual(result3, false)
    }
    
    func testisValidNicknameLetters() {
        //only letters a-z A-Z 0-9 . -
        let result = vm.isValidNicknameLetters("abcABC123-.")
        
        XCTAssertEqual(result, true)
    }
    
    func testisValidNicknameFirstLetter() {
        //first letters only a-ZA-Z
        let result = vm.isValidNicknameFirstLetter("abc123")
        let result1 = vm.isValidNicknameFirstLetter("ABC123")
        let result2 = vm.isValidNicknameFirstLetter("123abc")
        
        XCTAssertEqual(result, true)
        XCTAssertEqual(result1, true)
        XCTAssertEqual(result2, false)
        
    }
    
    func testisValidEmail() {
        //for exercise email may contains letters only a-z A-Z 0-9 . -
        //first letters only a-ZA-Z
        //only second level domain name
        let result = vm.isValidEmail("abc@cba.com")
        let result1 = vm.isValidEmail("123abc@cba.com")
        let result2 = vm.isValidEmail("abc@cba@abc.com")
        let result3 = vm.isValidEmail("abc@cba@abc.efg.com")
        
        XCTAssertEqual(result, true)
        XCTAssertEqual(result1, false)
        XCTAssertEqual(result2, false)
        XCTAssertEqual(result3, false)
        
    }
    
}
