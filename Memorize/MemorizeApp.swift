//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Arthur Ruan on 15/07/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let gameViewModel = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(gameViewModel: gameViewModel)
        }
    }
}
