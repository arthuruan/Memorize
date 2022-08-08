//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Ruan on 18/07/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚂", "🚀", "🚁", "🚘", "🚃", "🚄", "🛺", "🛶", "🚌", "🚚", "🚟", "🛸", "⛵️", "🚲", "🛴", "🏎", "🛵", "🏍", "🚤", "🛰", "🚢", "🚠", "🚜", "🚇"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s) (only way the model will be change)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
