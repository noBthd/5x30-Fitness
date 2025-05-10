//
//  SignUpButtonView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct SignUpButton: View {
    let SignUpTitle: String
    let SignUp: () -> Void
    
    var body: some View {
        VStack (spacing: 10){
            // SIGN UP BUTTON
            Button(action: SignUp){
                Text(SignUpTitle)
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

//TODO: rplace this func with registration
func someSignUp() -> Void {
    print("USER SIGNED UP")
}

#Preview{
    SignUpButton(
        SignUpTitle: "Sign Up",
        SignUp: someSignUp
    )
}
