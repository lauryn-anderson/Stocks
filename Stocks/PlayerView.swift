//
//  PlayerView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct PlayerView: View {
    @State var player: Player
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Text(player.name)
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(player.stocks, id: \.self) { stock in
                HStack {
                    Spacer()
                    Image(systemName: stockImage(stock: stock.type))
                        .frame(width: 50, height: 70)
                        .foregroundColor(stockColor(stock: stock.type))
                    Text("\(stock.amount)")
                    Spacer()
                }
                .font(.system(size: 50))
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: Player(name: "Lauryn"))
    }
}
