//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Ruan on 18/07/22.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "😋"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
