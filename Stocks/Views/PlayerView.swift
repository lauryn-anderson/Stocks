//
//  PlayerView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct PlayerView: View {
    @State var player: Player
    @ObservedObject var game: Game
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Spacer(minLength: 0)
                Text(player.name)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Text("$\(totalValue)")
                Spacer(minLength: 0)
            }
            ForEach(player.stocks, id: \.self) { stock in
                HStack(spacing: 20) {
                    Spacer(minLength: 0)
                    imageFor(stock.type)
                        .renderingMode(.template)
                        .frame(width: 60, height: 60)
                        .foregroundColor(stock.type.color)
                    Text("\(stock.amount)")
                    Text("$\(stockValue(stock))")
                        .font(.callout)
                    Spacer(minLength: 0)
                }
                .font(.system(size: 50))
            }
            HStack {
                Spacer(minLength: 0)
                Text("$\(player.money) left")
                Spacer(minLength: 0)
            }
        }
    }
    
    func imageFor(_ type: StockType) -> Image {
        if type.imageFill.isSystem {
            return Image(systemName: type.imageFill.name)
        } else {
            return Image(type.imageFill.name)
                .resizable()
        }
    }
    
    func stockValue(_ stock: PlayerStock) -> Int {
        return stock.amount * game.stockPrice(stock: stock.type) / 100
    }
    
    var totalValue: Int {
        var total = player.money
        for stock in player.stocks {
            total += stockValue(stock)
        }
        return total
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: Player(name: "Lauryn"), game: Game())
    }
}
