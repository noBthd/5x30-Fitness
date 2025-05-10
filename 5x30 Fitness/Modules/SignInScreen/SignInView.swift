//
//  SignInView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct SignInView: View {
    // some data
    
    var body : some View {
        SignInButton(
            SignInTitle: "Sign In",
            CreateUserTitle: "Create Account",
            SignIn: tmpFunc,
            CreateUser: tmpFunc
        )
    }
}

#Preview {
    SignInView()
}
