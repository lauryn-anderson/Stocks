//
//  DiceView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-25.
//

import SwiftUI

struct DiceView: View {
    @Binding var side: DiceType
    
    var body: some View {
        VStack {
            Image(systemName: side.image())
                .font(.system(size: 50))
            Text(side.title())
        }
        .foregroundColor(.black)
        .frame(width: 120, height: 120)
        .padding()
        .background(side.color())
        .cornerRadius(12)
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DiceView(side: GameView(game: Game()).$stockDie.currentSide)
            DiceView(side: GameView(game: Game()).$amountDie.currentSide)
        }
    }
}
