//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Erik Enriquez on 11/22/19.
//  Copyright © 2019 Erik Enriquez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n: leftDiceNumber)
                    diceView(n: rightDiceNumber)
                }
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct diceView: View {
    
    var n: Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
        .padding()
    }
}
