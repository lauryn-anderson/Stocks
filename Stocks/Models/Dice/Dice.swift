//
//  Dice.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import Foundation
import SwiftUI

struct Dice {
    var sides: [DiceType]
    var currentSide: DiceType
    mutating func roll() {
        currentSide = sides[Int.random(in: 0...sides.count-1)]
    }
    
    init<T: CaseIterable>(type: T) {
        sides = T.allCases as! [DiceType]
        currentSide = sides[0]
        roll()
    }
}

protocol DiceType: CustomStringConvertible {
    var description:  String { get }
    var image: (name: String, isSystem: Bool) { get }
    var imageFill: (name: String, isSystem: Bool) { get }
    var color: Color { get }
}
