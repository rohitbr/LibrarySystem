//
//  BookTests.swift
//  LibraryTests
//
//  Created by Bhat, Rohit on 8/8/24.
//

import XCTest
@testable import Library

final class BookTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_book_calculateFee_ZeroDays() {
        let numberOfDays: UInt = 0
        
        let libraryItem = Book(title: "Zero days", uniqueIdentifier: "1")
        let lateFees = libraryItem.lateFee(days: numberOfDays)
        
        XCTAssertEqual(lateFees, 0)
    }
    
    func test_book_calculateFee_PositiveDays() {
        let numberOfDays: UInt = 10
        
        let libraryItem = Book(title: "Zero days", uniqueIdentifier: "1")
        let lateFees = libraryItem.lateFee(days: numberOfDays)
        
        XCTAssertEqual(lateFees, 100)
    }
}
