//
//  ContentView.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("goldFilled")
                .foregroundColor(.pink)
                .frame(width: 200, height: 300, alignment: .center)
                .scaleEffect(x: 0.5, y: 0.5, anchor: .center)
        }
        .background(Color.blue)
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
