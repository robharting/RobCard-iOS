//
//  InfoView.swift
//  RobCard-iOS
//
//  Created by Harting, R.P.G. (Rob) on 19/09/2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(.white))
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.02, green: 0.32, blue: 0.87, opacity: 1.0))
                    Text(text)
                        .font(Font.custom("Roboto-Bold", size: 20))
                        .bold()
                        .foregroundColor(Color(red: 0.02, green: 0.32, blue: 0.87, opacity: 1.0))
                })
            .padding(.all)
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    InfoView(text:"hello", imageName: "phone.fill")
}
