//
//  ContentView.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemCyan)
                    .ignoresSafeArea()
            VStack {
                Spacer()
                ZStack {
                    Image("worldsFlags")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                        .background(Rectangle() .foregroundColor(Color(hue: 0.618, saturation: 0.208, brightness: 0.636, opacity: 0.6)))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                }
                
                Text("Welcome to the flags trivia!!")
                Spacer()
                NavigationLink(destination: Second_view()) {
                    Text("Let's test your world knowledge")
                }
                .buttonStyle(.borderedProminent)
                }
                
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
