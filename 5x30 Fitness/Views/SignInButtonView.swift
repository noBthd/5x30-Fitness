//
//  authButton.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct SignInButton: View {
    let SignInTitle: String
//    let CreateUserTitle: String
    
    let SignIn: (String, String) -> Void
    @Binding var Email: String
    @Binding var Password: String
    
//    let CreateUser: () -> Void
    
    var body: some View {
        VStack (spacing: 10){
            // SIGN IN BUTTON
            Button(action: {
                signIn(Email, Password)
            }) {
                Text(SignInTitle)
                    .multilineTextAlignment(.center)
                    .frame(width: 280.0, height: 24.0)
                    .foregroundStyle(Color.white)
                    .padding(.vertical, 9.0)
                    .padding(.horizontal, 10)
                    .font(
                        Font.custom(
                            "Myanmar Khyay",
                            size: 18
                        )
                    )
            }
            .background(Color("baseColor"))
            .cornerRadius(12)
            
            // CREATE USER BUTTON
//            Button(action: CreateUser) {
//                Text(CreateUserTitle)
//                    .font(
//                        Font.custom(
//                            "Myanmar Khyay",
//                            size: 12
//                        )
//                    )
//                    .multilineTextAlignment(.center)
//                    .underline()
//            }
        }
    }
}

//PREVIEWS

#Preview{
    
}
