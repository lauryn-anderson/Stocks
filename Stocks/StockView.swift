//
//  StockView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import SwiftUI

struct StockView: View {
    let stock: StockOptions
    @ObservedObject var game: Game
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: stockImage(stock: stock))
                .frame(width: 0)
                .font(.system(size: 40))
            VStack {
                Text(stockTitle(stock: stock))
                    .allowsTightening(true)
                Text("\(game.stockPrice(stock: stock)) ¢")
            }
            //.font(.system(size: 40))
            Spacer()
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .background(stockColor(stock: stock))
        .foregroundColor(.black)
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView(stock: .industrial, game: GameView(game: Game()).game)
    }
}
