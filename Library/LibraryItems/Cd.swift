//
//  Cd.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

struct Cd: LibraryItem {    
    func lateFee(days: UInt) -> UInt {
        return value * days
    }
    
    let value: UInt = 20

    var title: String
    var uniqueIdentifier: String
}
