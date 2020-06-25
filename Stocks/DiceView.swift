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
            
        }
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(side: GameView(game: Game()).stockDie.currentSide)
    }
}
