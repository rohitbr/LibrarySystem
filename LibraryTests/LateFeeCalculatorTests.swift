//
//  LateFeeCalculatorTests.swift
//  LibraryTests
//
//  Created by Bhat, Rohit on 8/8/24.
//

import XCTest
@testable import Library

final class LateFeeCalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_calculateLateFee_threeItemsDue_positiveDays() throws {
        let calculateLateFee = LateFeeCalculator()
        let item1 = Dvd(title: "", uniqueIdentifier: "1")
        let item2 = Book(title: "", uniqueIdentifier: "1")
        let item3 = Cd(title: "", uniqueIdentifier: "1")
        
        let lateFee = calculateLateFee.calculateLateFee(items: [item1, item2, item3], days: 2)
        
        XCTAssertEqual(lateFee, 120)
    }

    

}
