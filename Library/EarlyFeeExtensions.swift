//
//  EarlyFeeExtensions.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

protocol EarlyFeeCalculatable {
    func earlyFees(days: UInt) -> UInt
}
