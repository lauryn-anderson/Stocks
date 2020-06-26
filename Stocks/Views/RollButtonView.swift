//
//  RollButtonView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-26.
//

import SwiftUI

struct RollButtonView: View {
    //@Binding var stockDie: Dice
    //@Binding var amountDie: Dice
    //@Binding var changeDie: Dice
    
    var body: some View {
        Button(action: {
            //$stockDie.roll
        }) {
            VStack {
                Text("Roll")
                    .bold()
                    .font(.system(size: 35))
                Text("Dice")
                    .bold()
                    .font(.system(size: 35))

            }
            .padding()
            .foregroundColor(.black)
            .background(Color.white)
        }
        .frame(width: 120, height: 120)
        .buttonStyle(CardButtonStyle())    }
}

struct RollButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RollButtonView()
    }
}
