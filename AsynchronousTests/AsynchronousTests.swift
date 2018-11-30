//
//  AsynchronousTests.swift
//  AsynchronousTests
//
//  Created by Banana Viking on 11/30/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import XCTest
@testable import TestingSwift

class AsynchronousTests: XCTestCase {

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
    
    func testPrimesUpTo100ShouldBe25() {
        // given
        let maximumCount = 100
        let expectation = XCTestExpectation(description: "Calculate primes up to \(maximumCount)")
        
        // when
        PrimeCalculator.calculate(upTo: maximumCount) {
            // then
            XCTAssertEqual($0.count, 25)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
}
