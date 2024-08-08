//
//  LibraryItem.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

//   LibraryItem conforms to protocols: LateFeeCalculatable, implying that any type conforming to LibraryItem must also conform to this protocols. The code assumes that this protocol are defined elsewhere in your codebase, likely requiring the implementation of methods related to calculating fees.

protocol LibraryItem : LateFeeCalculatable {
    var title : String { get set }
    var uniqueIdentifier: String { get set }
    var value: UInt { get }
}
