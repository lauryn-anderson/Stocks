//
//  GameView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: Game
    @ObservedObject var stockDie = Dice(type: StockType.gold)
    @ObservedObject var amountDie = Dice(type: AmountOptions.five)
    @ObservedObject var changeDie = Dice(type: ChangeOptions.up)
    
    var body: some View {
        VStack {
            HStack {
                Text("Stocks")
                    .font(.title)
                Spacer()
                DiceView(side: $stockDie.currentSide)
                DiceView(side: $amountDie.currentSide)
                DiceView(side: $changeDie.currentSide)
                RollButtonView()//stockDie: $stockDie, amountDie: $amountDie, changeDie: $changeDie)
            }
            HStack {
                ForEach(game.stocks, id: \.self) { stock in
                    StockView(stock: stock, game: game)
                }
            }
            HStack(spacing: 20) {
                Spacer(minLength: 0)
                ForEach(game.players, id: \.self) { player in
                    PlayerView(player: player, game: game)
                }
                .multilineTextAlignment(.center)
                Spacer(minLength: 0)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: Game())
    }
}
