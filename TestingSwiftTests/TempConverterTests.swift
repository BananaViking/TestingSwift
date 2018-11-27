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
    var sut: Converter!

    override func setUp() {
        sut = Converter()
    }

    override func tearDown() {
        sut = nil
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
        let input = 32.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 0)
        
        
    }
    
    func test212FahrenheitIs100Celsius() {
        // given
        let input = 212.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 100)
    }

}
