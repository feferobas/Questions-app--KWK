//
//  SixthView.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 15/07/23.
//

import SwiftUI

struct SixthView: View {

        @State private var wrongAnswer5 = ""
        @State private var rightanswer5 = ""
        @State private var nameCountry1 = ""
        @State private var text2 = ""
        @State private var text3 = ""
        func correctButton() {
            if nameCountry1 == "netherlands" || nameCountry1 == "Netherlands" || nameCountry1 == "The netherlands" || nameCountry1 == "THE NETHERLANDS" || nameCountry1 == "The Nteherlands" || nameCountry1 == "holland" || nameCountry1 == "Holland" || nameCountry1 == "HOLLAND" {
                text3 = "YESS, this is \(nameCountry1)'s flag!! You completed the trivia"
            }
            else {
                text2 = "Try again, this is not \(nameCountry1)'s flag"
            }
        }
        var body: some View {
            NavigationStack {
                ZStack {
                    Color(.lightGray)
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        ZStack{
                        Image("netherlands")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                                .padding()
                            
                                .background(Rectangle() .foregroundColor(Color(hue: 0.618, saturation: 0.208, brightness: 0.636, opacity: 0.6)))
                                .cornerRadius(15)
                                .shadow(radius: 10)
                                .padding()
                        }
                            
                        Text("What country is this flag from?")
                        Spacer()
                        HStack {
                            Spacer()
                            TextField("Write your answer", text: $nameCountry1)
                            Button("See if it is correct") {
                                correctButton()
                            }
                            Spacer()
                        }
                        Spacer()
                        Text(text2)
                        NavigationLink(destination: ContentView() ) {
                            Text(text3)
                        }
                        .toolbar {
                            
                            NavigationLink(destination: ContentView()) {
                                Text("Quit")
                            }
                            .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.688, saturation: 0.891, brightness: 0.456)/*@END_MENU_TOKEN@*/)
                        }
                        
                    }
                }
            }
        }
    }


struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
