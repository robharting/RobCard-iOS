//
//  ContentView.swift
//  RobCard-iOS
//
//  Created by Harting, R.P.G. (Rob) on 18/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // #0652DD - Merchant Marine Blue from https://flatuicolors.com/palette/nl
            Color(red: 0.02, green: 0.32, blue: 0.87, opacity: 1.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                VStack {
                    Image("rob")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5)
                        )
                    Text("Rob Harting")
                        .font(Font.custom("Roboto-Bold", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("iOS Developer & IT CL")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    Divider()
                    InfoView(text: "+31 6 300 70 678", imageName: "phone.fill")
                    InfoView(text: "robharting@hotmail.com", imageName: "envelope.fill")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

