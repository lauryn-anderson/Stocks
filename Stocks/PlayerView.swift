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
                    Image(systemName: stock.type.image())
                        .frame(width: 20, height: 50)
                        .foregroundColor(stock.type.color())
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
