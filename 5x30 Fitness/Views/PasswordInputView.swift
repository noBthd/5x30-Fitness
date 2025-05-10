//
//  PasswordInputView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct PasswordInput : View {
    @State private var password: String=""
    
    var body : some View {
        VStack (spacing: 2) {
            Text("Password")
                .padding(.trailing, 237)
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
                
                SecureField(
                    "Password",
                    text: $password
                )
                .padding(.horizontal)
                .textContentType(.password)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.none)
            }
            .frame(width: 300, height: 56)
        }
    }
}

//TODO: add getter of password

#Preview {
    PasswordInput()
}
