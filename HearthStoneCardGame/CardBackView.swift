//
//  CardBackView.swift
//  HearthStoneCardGame
//
//  Created by Константин Прокофьев on 28.09.2021.
//

import SwiftUI

struct CardBackView: View {
    var body: some View {
        Image("cardBack")
            .resizable()
            .frame(width: 150, height: 200)
            .padding(.trailing, 1)
            .padding(.top, 1)
    }
}

struct CardBackView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackView()
    }
}
