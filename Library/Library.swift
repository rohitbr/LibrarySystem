//
//  Library.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import Foundation

// System Design. Design scalable systems. Open ended questions.
// Learn with experience.
//

// 1. First we need to see what is the demands.Requirement gathering :
//  Functional and non functional.
// User should be read messages write messages. etc
// Scalable, no hang, fast, secure.

// 2. Prioritization : Phasing and scheduling. Define criticality. MVP 

// 3. Architecture : Components. TechStatck. Communication. Infrastructure.
// First do the High level design. // Flows of screen. // How should // functional and non-functional requirements.

// 4. Low level design : How to apply OOPS, Gang of 4 design principles.
// Multi level parking.

struct Library {
    
    func calculateTotalValueOfAllItems(items: [LibraryItem]) -> UInt {
        let totalValue = items.reduce(UInt(0)) { partialResult, item in
            partialResult + item.value
        }
        
        return totalValue
    }
}
