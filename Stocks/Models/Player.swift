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
    let stockTitles: [StockType: String] = [.grain: "Grain", .oil: "Oil", .gold: "Gold", .silver: "Silver", .bonds: "Bonds", .industrial: "Industrial"]
    var money = 5000
    
    init(name: String) {
        self.name = name
        self.stocks = [PlayerStock(stock: .grain), PlayerStock(stock: .oil), PlayerStock(stock: .gold), PlayerStock(stock: .silver), PlayerStock(stock: .bonds), PlayerStock(stock: .industrial)]
    }
}

struct PlayerStock: Hashable {
    var type: StockType
    var amount: Int
    
    init(stock: StockType) {
        type = stock
        amount = 100 // number of that stock owned by this player
    }
}
