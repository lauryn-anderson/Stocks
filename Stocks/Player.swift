//
//  Player.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import Foundation

struct Player: Hashable {
    
    var name: String
    var stocks: [PlayerStock]
    let stockTitles = [StockOptions.grain: "Grain", .oil: "Oil", .gold: "Gold", .silver: "Silver", .bonds: "Bonds", .industrial: "Industrial"]
    
    init(name: String) {
        self.name = name
        self.stocks = [PlayerStock(stock: .grain), PlayerStock(stock: .oil), PlayerStock(stock: .gold), PlayerStock(stock: .silver), PlayerStock(stock: .bonds), PlayerStock(stock: .industrial)]
    }
}

struct PlayerStock: Hashable {
    var type: StockOptions
    var amount: Int
    
    init(stock: StockOptions) {
        type = stock
        amount = 50
    }
}
