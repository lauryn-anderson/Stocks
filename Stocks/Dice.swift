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
    var currentSide
    mutating func roll() {
        currentSide = sides[Int.random(in: 0...sides.count-1)]
    }
    
    init(type: DiceType.Type) {
        sides = type.allCases
    }
}

protocol DiceType: CaseIterable {
    func getOptions() -> [DiceType]
    func title() -> String
    func image() -> String
    func color() -> Color
}
