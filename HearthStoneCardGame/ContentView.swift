//
//  ContentView.swift
//  HearthStoneCardGame
//
//  Created by Константин Прокофьев on 28.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var logoPressed : Bool = false
    
    var body: some View {
        ZStack{
            BackGroundView()
            VStack {
                Spacer()
                CardView()
                    .shadow(color: logoPressed ? .black : .green, radius: logoPressed ? 0 : 10, x: 1, y: 1)
                    .overlay(content: {
                        CardBackView()
                            .opacity(logoPressed ? 1 : 0)
                    })
                    .blur(radius: logoPressed ? 1.5 : 0)
                    .scaleEffect(logoPressed ? 0.45 : 1)
                    .rotation3DEffect(logoPressed ? .degrees(180) : .degrees(0), axis: (x: 0, y: 1, z: 0))
                    .animation(Animation.default, value: logoPressed)
                Button(action: {logoPressed.toggle()}) {
                    DealView()
                        .rotationEffect(.degrees(Double(logoPressed ? 360 : 0)))
                        .animation(.interpolatingSpring(mass: 1.2, stiffness: 25, damping: 13, initialVelocity: 0))
//                  MARK: -another animation
//                        .rotation3DEffect(logoPressed ? .degrees(180) : .degrees(0), axis: (x: 0, y: 1, z: 0))
//                        .animation(Animation.easeInOut, value: logoPressed)
                }
                CardView()
                    .shadow(color: logoPressed ? .black : .red, radius: logoPressed ? 0 : 10, x: 1, y: 1)
                    .overlay(content: {
                        CardBackView()
                            .opacity(logoPressed ? 1 : 0)
                    })
                    .blur(radius: logoPressed ? 1.5 : 0)
                    .scaleEffect(logoPressed ? 0.45 : 1)
                    .rotation3DEffect(logoPressed ? .degrees(180) : .degrees(0), axis: (x: 0, y: 1, z: 0))
                    .animation(Animation.default, value: logoPressed)
                
                HStack {
                    Spacer()
                    Text("Score player")
                        .foregroundColor(.white)
                        .offset(x: -50, y: 0)
                    Text("Score CPU")
                        .foregroundColor(.white)
                        .offset(x: 50, y: 0)
                    Spacer()
                }
                .padding(.top, 20)
                Spacer()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
