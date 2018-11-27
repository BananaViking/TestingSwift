//
//  TempConverterTests.swift
//  TestingSwiftTests
//
//  Created by Banana Viking on 11/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import XCTest
@testable import TestingSwift

class TempConverterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test32FahrenheitIsZeroCelsius() {
        // given
        let sut = Converter()
        let input = 32.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 0)
        
        
    }
    
    func test212FahrenheitIs100Celsius() {
        // given
        let sut = Converter()
        let input = 212.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 100)
    }

}
