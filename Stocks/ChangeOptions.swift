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
    
    func title() -> String {
        switch self {
        case .up:
            return "Up"
        case .down:
            return "Down"
        case .dividend:
            return "Dividend"
        }
    }
    
    func image() -> String {
        switch self {
        case .up:
            return "arrow.up.circle"
        case .down:
            return "arrow.down.circle"
        case .dividend:
            return "dollarsign.circle"
        }
    }
    func color() -> Color {
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
