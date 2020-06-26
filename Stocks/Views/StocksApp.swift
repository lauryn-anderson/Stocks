//
//  StocksApp.swift
//  Stocks
//
//  Created by Lauryn Anderson on 2020-06-24.
//

import SwiftUI

@main
struct StocksApp: App {
    var body: some Scene {
        WindowGroup {
            GameView(game: Game())
        }
    }
}
