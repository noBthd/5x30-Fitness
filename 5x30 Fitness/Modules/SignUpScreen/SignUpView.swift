//
//  SignInView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct SignUpView : View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 25){
            VStack(spacing: 35) {
                InputFields
                
                SignUpButton(
                    SignUpTitle: "Sign Up",
                    SignUp: signUp,
                    Email: $email,
                    Password: $password
                )
            }
            OAuth(
                AppleAuth: appleAuth,
                GoogleAuth: googleAuth,
                GithubAuth: githubAuth
            )
        }
    }
    
    // SUBVIEWS
    
    private var InputFields : some View {
        VStack(spacing: 10) {
            EmailInput(Email: $email)
            PasswordInput(Password: $password)
        }
    }
}
#Preview {
    SignUpView()
}
