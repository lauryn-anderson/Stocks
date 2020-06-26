//
//  GameView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: Game
    @State var stockDie = Dice(type: StockType.gold)
    @State var amountDie = Dice(type: AmountOptions.five)
    @State var changeDie = Dice(type: ChangeOptions.up)
    
    var body: some View {
        VStack {
            HStack {
                Text("Stocks")
                    .font(.title)
                Spacer()
                DiceView(side: $stockDie.currentSide)
                DiceView(side: $amountDie.currentSide)
                DiceView(side: $changeDie.currentSide)
            }
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
