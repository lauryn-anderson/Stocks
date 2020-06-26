//
//  ChangeOptions.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import Foundation
import SwiftUI

enum ChangeOptions: DiceType, CaseIterable {
    
    case up, down, dividend
    
    var description: String {
        switch self {
        case .up:
            return "Up"
        case .down:
            return "Down"
        case .dividend:
            return "Dividend"
        }
    }
    
    var image: (name: String, isSystem: Bool) {
        switch self {
        case .up:
            return ("arrow.up.circle", true)
        case .down:
            return ("arrow.down.circle", true)
        case .dividend:
            return ("dollarsign.circle", true)
        }
    }
    var color: Color {
        switch self {
        case .up:
            return Color(.green)
        case .down:
            return Color(.red)
        case .dividend:
            return Color(.magenta)
        }
    }
}
