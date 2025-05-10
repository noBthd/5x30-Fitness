//
//  SignInView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body : some View {
        VStack(spacing: 25){
            VStack(spacing: 35) {
                InputFields
                
                SignInButton(
                    SignInTitle: "Sign In",
                    CreateUserTitle: "Create Account",
                    SignIn: signIn(),
                    CreateUser: goToUserCreation
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

// PREVIEWS

#Preview {
    SignInView()
}
