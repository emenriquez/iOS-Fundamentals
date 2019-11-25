//
//  ContentView.swift
//  ErikCard
//
//  Created by Erik Enriquez on 11/21/19.
//  Copyright © 2019 Erik Enriquez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Profile Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                        
                )
                Text("Erik Enriquez")
                    .font(Font.custom("Calistoga-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Machine Learning Engineer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "(956) 605-9999", imageName: "phone.fill")
                InfoView(text: "erikmail@erik.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
