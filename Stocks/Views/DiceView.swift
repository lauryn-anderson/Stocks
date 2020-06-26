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
            imageFor(side)
                .font(.system(size: 60))
                .frame(width: 65, height: 65)
            Text(side.description)
        }
        .foregroundColor(.black)
        .frame(width: 120, height: 120)
        .padding()
        .background(side.color)
        .cornerRadius(12)
    }
    
    func imageFor(_ type: DiceType) -> Image {
        if type.image.isSystem {
            return Image(systemName: type.image.name)
        } else {
            return Image(type.image.name)
                .resizable()
        }
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
