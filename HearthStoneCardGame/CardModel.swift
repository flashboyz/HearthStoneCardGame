//
//  CardModel.swift
//  HearthStoneCardGame
//
//  Created by Константин Прокофьев on 28.09.2021.
//

import SwiftUI


class Card {
    let id: Int
    var cardImage: String
    let attack : Int
    let defence : Int
    
    init(id: Int, cardImage: String, attack: Int, defence: Int) {
        self.id = id
        self.cardImage = cardImage
        self.attack = attack
        self.defence = defence
    }
}
