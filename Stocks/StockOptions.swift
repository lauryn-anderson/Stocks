//
//  StockOptions.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import Foundation
import SwiftUI

enum StockOptions: DiceType, CaseIterable {
    case grain, oil, gold, silver, bonds, industrial
    
    func title() -> String {
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
    
    func image() -> String {
        switch self {
        case .grain:
            return "leaf.fill"
        case .oil:
            return "drop.fill"
        case .gold:
            return "rectangle.roundedtop.fill"
        case .silver:
            return "bitcoinsign.circle.fill"
        case .bonds:
            return "scroll.fill"
        case .industrial:
            return "hammer.fill"
        }
    }
    func color() -> Color {
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
