//
//  StockView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import SwiftUI

struct StockView: View {
    let stock: StockType
    @ObservedObject var game: Game
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: stock.image.name)
                .frame(width: 0)
                .font(.system(size: 40))
            VStack {
                Text(stock.description)
                Text("\(game.stockPrice(stock: stock)) ¢")
            }
            //.font(.system(size: 40))
            Spacer()
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .background(stock.color)
        .foregroundColor(.black)
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView(stock: .industrial, game: GameView(game: Game()).game)
    }
}
