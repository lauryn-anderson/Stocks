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
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            imageFor(stock)
                .frame(width: 50, height: 50)
                .font(.system(size: 40))
            VStack {
                Text(stock.description)
                    .lineLimit(1)
                Text("\(game.stockPrice(stock: stock)) ¢")
            }
            .padding()
            Spacer(minLength: 0)
        }
        .background(stock.color)
        .foregroundColor(.black)
    }
    
    func imageFor(_ type: StockType) -> Image {
        if type.image.isSystem {
            return Image(systemName: type.image.name)
        } else {
            return Image(type.image.name)
                .resizable()
        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView(stock: .industrial, game: GameView(game: Game()).game)
    }
}
