//
//  StockOptions.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import Foundation
import SwiftUI

enum StockType: DiceType, CaseIterable {
    case grain, oil, gold, silver, bonds, industrial
    
    var description: String {
        switch self {
        case .grain:
            return "Grain"
        case .oil:
            return "Oil"
        case .gold:
            return "Gold"
        case .silver:
            return "Silver"
        case .bonds:
            return "Bonds"
        case .industrial:
            return "Industry"
        }
    }
    
    var image: (name: String, isSystem: Bool) {
        switch self {
        case .grain:
            return ("grain", false)
        case .oil:
            return ("drop.fill", true)
        case .gold:
            return ("rectangle.roundedtop.fill", true)
        case .silver:
            return ("bitcoinsign.circle.fill", true)
        case .bonds:
            return ("scroll.fill", true)
        case .industrial:
            return ("hammer.fill", true)
        }
    }
    var color: Color {
        switch self {
        case .grain:
            return .green
        case .oil:
            return Color(UIColor.systemIndigo)
        case .gold:
            return .yellow
        case .silver:
            return .gray
        case .bonds:
            return .red
        case .industrial:
            return .purple
        }
    }
}
