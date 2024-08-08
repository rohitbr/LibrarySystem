//
//  LibraryTests.swift
//  LibraryTests
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

import XCTest
@testable import Library

final class LibraryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_calculateTotalValueOfAllItems_noItems() {
        let library = Library()
        let result = library.calculateTotalValueOfAllItems(items: [])
        
        XCTAssertEqual(result, 0)
    }
    
    func test_calculateTotalValueOfAllItems_OneItem() {
        let library = Library()
        let item1 = Dvd(title: "", uniqueIdentifier: "1")

        let result = library.calculateTotalValueOfAllItems(items: [item1])
        
        XCTAssertEqual(result, 30)
    }
    
    func test_calculateTotalValueOfAllItems_TwoItems() {
        let library = Library()
        let item1 = Dvd(title: "", uniqueIdentifier: "1")
        let item2 = Book(title: "", uniqueIdentifier: "1")

        let result = library.calculateTotalValueOfAllItems(items: [item1, item2])
        
        XCTAssertEqual(result, 40)
    }
    
    func test_calculateTotalValueOfAllItems_ThreeItems() {
        let library = Library()
        let item1 = Dvd(title: "", uniqueIdentifier: "1")
        let item2 = Book(title: "", uniqueIdentifier: "1")
        let item3 = Cd(title: "", uniqueIdentifier: "1")

        let result = library.calculateTotalValueOfAllItems(items: [item1, item2, item3])
        
        XCTAssertEqual(result, 60)
    }
    
    func test_calculateTotalValueOfAllItems_DuplicateItems() {
        let library = Library()
        let item1 = Dvd(title: "", uniqueIdentifier: "1")
        let item2 = Book(title: "", uniqueIdentifier: "1")
        let item3 = Cd(title: "", uniqueIdentifier: "1")
        let item4 = Cd(title: "", uniqueIdentifier: "2")
        let item5 = Cd(title: "", uniqueIdentifier: "3")

        let result = library.calculateTotalValueOfAllItems(items: [item1, item2, item3, item4, item5])
        
        XCTAssertEqual(result, 100)
    }
}
