//
//  ThirdView.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 14/07/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var wrongAnswer2 = ""
    @State private var rightanswer2 = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemRed)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                    Image("canada")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                        .background(Rectangle() .foregroundColor(Color(hue: 0.952, saturation: 0.097, brightness: 0.915, opacity: 0.6)))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                }
                    
                    Text("What country is this flag from?")
                    Spacer()
                    Button("Australia") {
                        wrongAnswer2 = "Wrong answer, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    Button("Canada") {
                        rightanswer2 = "Congrats!! Next question"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.yellow)
                    Button("New Zealand") {
                        wrongAnswer2 = "Wrong answer, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    
                    Spacer()
                    Text (wrongAnswer2)
                    NavigationLink(destination:  FourthView() ) {
                        Text(rightanswer2)
                    }
                    .toolbar {
                        
                        NavigationLink(destination: FourthView()) {
                            Text("Skip question")
                        }
                        .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.688, saturation: 0.891, brightness: 0.456)/*@END_MENU_TOKEN@*/)
                    }
                    
                }
            }
        }
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
