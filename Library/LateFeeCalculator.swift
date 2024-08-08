//
//  LateFeeCalculator.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

struct LateFeeCalculator {
    func calculateLateFee(items: [LateFeeCalculatable], days: UInt) -> UInt {
        return items.reduce(0) { partialResult, item  in
            return partialResult + item.lateFee(days: days)
        }
    }
}
