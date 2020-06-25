//
//  GameView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: Game
    let stockDie = Dice(sides: StockOptions.grain.getOptions())
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(game.stocks, id: \.self) { stock in
                    StockView(stock: stock, game: game)
                }
            }
            HStack {
                Spacer()
                ForEach(game.players, id: \.self) { player in
                    PlayerView(player: player)
                }
                .multilineTextAlignment(.center)
                Spacer()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: Game())
    }
}
