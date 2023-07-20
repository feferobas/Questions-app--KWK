//
//  Second view.swift
//  Questions app- KWK
//
//  Created by Cristiane Andrade on 14/07/23.
//

import SwiftUI

struct Second_view: View {
    @State private var wrongAnswer1 = ""
    @State private var rightanswer1 = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGreen)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                    Image("brazil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding()
                        
                        .aspectRatio(contentMode: .fit)
                        .background(Rectangle() .foregroundColor(Color(hue: 0.504, saturation: 0.547, brightness: 0.237, opacity: 0.6)))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                }
                    
                    Text("What country is this flag from?")
                    Spacer()
                    Button("England") {
                        wrongAnswer1 = "Wrong answer 😝, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    Button("Italy") {
                        wrongAnswer1 = "Wrong answer 😝, try again"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    Button("Brazil") {
                        rightanswer1 = "Congrats!! Next question"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.yellow)
                    
                    Spacer()
                    Text (wrongAnswer1)
                    NavigationLink(destination:  ThirdView() ) {
                        Text(rightanswer1)
                    }
                    .toolbar {
                        
                        NavigationLink(destination: ThirdView()) {
                            Text("Skip question")
                        }
                        .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.688, saturation: 0.891, brightness: 0.456)/*@END_MENU_TOKEN@*/)
                    }
                    
                }
            }
        }
    }
}
struct Second_view_Previews: PreviewProvider {
    static var previews: some View {
        Second_view()
    }
}
