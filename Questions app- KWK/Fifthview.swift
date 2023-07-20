//
//  Fifthview.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 14/07/23.
//

import SwiftUI

struct Fifthview: View {
    @State private var wrongAnswer4 = ""
    @State private var rightanswer4 = ""
    @State private var nameCountry = ""
    @State private var text = ""
    @State private var text1 = ""
    func correctButton() {
        if nameCountry == "france" || nameCountry == "France" || nameCountry == "FRANCE" {
            text = "YESS, this is \(nameCountry)'s flag!! You completed the trivia"
        }
        else {
            text1 = "Try again, this is not \(nameCountry)'s flag"
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
                    Image("France")
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
                        TextField("Write your answer", text: $nameCountry)
                        Button("See if it is correct") {
                            correctButton()
                        }
                        Spacer()
                    }
                    Spacer()
                    Text(text1)
                    NavigationLink(destination: SixthView() ) {
                        Text(text)
                    }
                    .toolbar {
                        
                        NavigationLink(destination: SixthView()) {
                            Text("Skip question")
                        }
                        .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.688, saturation: 0.891, brightness: 0.456)/*@END_MENU_TOKEN@*/)
                    }
                    
                }
            }
        }
    }
}

struct Fifthview_Previews: PreviewProvider {
    static var previews: some View {
        Fifthview()
    }
}
