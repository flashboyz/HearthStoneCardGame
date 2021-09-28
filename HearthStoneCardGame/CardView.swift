//
//  CardView.swift
//  HearthStoneCardGame
//
//  Created by Константин Прокофьев on 28.09.2021.
//

import SwiftUI

struct CardView: View {
//    let cardsDeck: [Card] = Cards
  let randomCard: Card = Cards.randomElement() ?? Card(id: 0, cardImage: "sheild", attack: 0, defence: 0)
    
    
    var body: some View {
        let cardImage = randomCard.cardImage
        
        Image("\(cardImage)")
            .resizable()
            .frame(width: 150, height: 200)
            .padding(.leading, 10)
            .padding(.bottom)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
