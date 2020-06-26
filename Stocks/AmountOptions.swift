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
    
    var description: String {
        switch self {
        case .five:
            return "Five"
        case .ten:
            return "Ten"
        case .twenty:
            return "Twenty"
        }
    }
    
    var image: (name: String, isSystem: Bool) {
        switch self {
        case .five:
            return ("5.circle", true)
        case .ten:
            return ("10.circle", true)
        case .twenty:
            return ("20.circle", true)
        }
    }
    var color: Color {
        return Color(UIColor.systemTeal)
    }
}
