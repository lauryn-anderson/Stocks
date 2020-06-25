//
//  StockOptions.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import Foundation
import SwiftUI

enum StockOptions {
    case grain, oil, gold, silver, bonds, industrial
}

func stockTitle(stock: StockOptions) -> String {
    switch stock {
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
        return "Industrial"
    }
}

func stockImage(stock: StockOptions) -> String {
    switch stock {
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

func stockColor(stock: StockOptions) -> Color {
    switch stock {
    case .grain:
        return .green
    case .oil:
        return .blue
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
