//
//  SignInView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body : some View {
        NavigationStack() {
            VStack(spacing: 25) {
                VStack(spacing: 35) {
                    InputFields
                    
                    SignButtons
                }
                OAuth(
                    AppleAuth: appleAuth,
                    GoogleAuth: googleAuth,
                    GithubAuth: githubAuth
                )
            }
        }
    }
    
    // SUBVIEWS
    
    private var InputFields : some View {
        VStack(spacing: 10) {
            EmailInput(Email: $email)
            PasswordInput(Password: $password)
        }
    }
    
    private var SignButtons : some View {
        VStack(spacing: 10) {
            SignInButton(
                SignInTitle: "Sign In",
                SignIn: signIn,
                Email: $email,
                Password: $password
            )
            NavigationLink(
                "Create Account",
                destination: SignUpView()
            )
                .font(
                    Font.custom(
                        "Myanmar Khyay",
                        size: 12
                    )
                )
                .onDisappear() {
                    email = ""
                    password = ""
                }
        }
    }
}

// PREVIEWS

#Preview {
//    SignInView()
}
