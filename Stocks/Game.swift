//
//  Game.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import Foundation

class Game: ObservableObject {
    var grainPrice = 100
    var oilPrice = 100
    var goldPrice = 100
    var silverPrice = 100
    var bondsPrice = 100
    var industrialPrice = 100
    
    let stocks = [StockOptions.grain, .oil, .gold, .silver, .bonds, .industrial]
    let players = [Player(name: "Lauryn"), Player(name: "Sophie"), Player(name: "Rhys"), Player(name: "Erik")]
    
    func stockPrice(stock: StockOptions) -> Int {
        switch stock {
        case .grain:
            return grainPrice
        case .oil:
            return oilPrice
        case .gold:
            return goldPrice
        case .silver:
            return silverPrice
        case .bonds:
            return bondsPrice
        case .industrial:
            return industrialPrice
        }
    }
}
