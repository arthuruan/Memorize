//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Ruan on 18/07/22.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚂", "🚀", "🚁", "🚘", "🚃", "🚄", "🛺", "🛶", "🚌", "🚚", "🚟", "🛸", "⛵️", "🚲", "🛴", "🏎", "🛵", "🏍", "🚤", "🛰", "🚢", "🚠", "🚜", "🚇"]
    
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
