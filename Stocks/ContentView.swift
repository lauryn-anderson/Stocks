//
//  ContentView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

let players = [Player(name: "Lauryn"), Player(name: "Sophie")]

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Stocks!").padding()
                Image(systemName: "dollarsign.circle.fill")
            }
            .font(.system(size: 60))
            HStack {
                Spacer()
                ForEach(players, id: \.self) { player in
                    PlayerView(player: player)
                }
                .multilineTextAlignment(.center)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
