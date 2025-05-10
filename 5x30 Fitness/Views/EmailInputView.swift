//
//  EmailInputView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct EmailInput : View {
    @Binding var Email: String
    
    var body : some View {
        VStack (spacing: 2) {
            Text("Email")
                .padding(.trailing, 258)
                .frame(
                    width: 290,
                    height: 24
                )
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.white)
                .font(
                    Font.custom(
                        "Myanmar Khyay",
                        size: 12
                    )
                )
            
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(Color("baseColor"))
                    .frame(
                        width: 300.0,
                        height: 56.0
                    )
                    .cornerRadius(12)
                
                TextField(
                    "Email",
                    text: $Email
                )
                .padding(.horizontal)
            }
            .frame(width: 300, height: 56)

        }
    }
}

//TODO: add getter of email

#Preview {

}
