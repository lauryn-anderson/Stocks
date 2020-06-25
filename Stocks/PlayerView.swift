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
        VStack {
            Text(player.name)
            Label() {
                Text("Grain")
            } icon: {
                Image(systemName: "drop")
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: Player(name: "Lauryn"))
    }
}
