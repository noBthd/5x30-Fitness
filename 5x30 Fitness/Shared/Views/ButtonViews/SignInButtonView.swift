//
//  authButton.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct SignInButton: View {
    let SignInTitle: String
    let SignIn: (String, String, @escaping (Bool) -> Void) -> Void
    @Binding var Email: String
    @Binding var Password: String
    
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        VStack (spacing: 10){
            // SIGN IN BUTTON
            Button(action: {
                SignIn(Email, Password) { success in
                    isLogged = success
                }
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
        }
    }
}

//PREVIEWS

#Preview{
    
}
