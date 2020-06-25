//
//  Player.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import Foundation

class Player {
    var name: String
    var stocks = [StockOptions.grain: 0, .oil: 0, .gold: 0, .silver: 0, .bonds: 0, .industrial: 0]
    
    init(name: String) {
        self.name = name
    }
}

enum StockOptions {
    case grain, oil, gold, silver, bonds, industrial
}
