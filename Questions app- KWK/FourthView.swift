//
//  FourthView.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 14/07/23.
//

import SwiftUI

struct FourthView: View {
    @State private var wrongAnswer3 = ""
    @State private var rightanswer3 = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemRed)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                    Image("japan")
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
                    Button("Japan") {
                        rightanswer3 = "Congrats!! Next question"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.yellow)
                
                    Button("Thailand") {
                        wrongAnswer3 = "Wrong answer, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    Button("South Africa") {
                        wrongAnswer3 = "Wrong answer, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    
                    Spacer()
                    Text (wrongAnswer3)
                    NavigationLink(destination:  Fifthview() ) {
                        Text(rightanswer3)
                    }
                    .toolbar {
                        
                        NavigationLink(destination: Fifthview()) {
                            Text("Skip question")
                        }
                        .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.688, saturation: 0.891, brightness: 0.456)/*@END_MENU_TOKEN@*/)
                    }
                    
                }
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
