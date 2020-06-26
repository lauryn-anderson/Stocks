//
//  Dice.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import Foundation
import SwiftUI

class Dice: ObservableObject {
    var sides: [DiceType]
    @Published var currentSide: DiceType
    func roll() {
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
