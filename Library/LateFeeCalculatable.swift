//
//  LateFeeCalculatable.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

protocol LateFeeCalculatable {
    func lateFee(days: UInt) -> UInt
}
