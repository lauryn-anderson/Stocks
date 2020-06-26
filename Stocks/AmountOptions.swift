//
//  AmountOptions.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import Foundation
import SwiftUI

enum AmountOptions: DiceType, CaseIterable {
    case five, ten, twenty
    
    func title() -> String {
        switch self {
        case .five:
            return "Five"
        case .ten:
            return "Ten"
        case .twenty:
            return "Twenty"
        }
    }
    
    func image() -> String {
        switch self {
        case .five:
            return "5.circle"
        case .ten:
            return "10.circle"
        case .twenty:
            return "20.circle"
        }
    }
    func color() -> Color {
        return Color(UIColor.systemTeal)
    }
}
