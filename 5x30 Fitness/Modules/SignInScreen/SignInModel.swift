//
//  SignInModel.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

//TODO: rework this funcs
func tmpFunc() -> Void {
    print("SOMETHING HAPPENED")
}

func appleAuth() -> Void {
    print("REDIRECTED TO APPLE AUTH")
}

func googleAuth() -> Void {
    print("REDIRECTED TO GOOGLE AUTH")
}

func githubAuth() -> Void {
    print("REDIRECTED TO GITHUB AUTH")
}

func signIn(
    _ email: String,
    _ password: String
) -> Void {
    print("USER SIGNED IN: email: \(email), password: \(password)")
    
    if (email.isEmpty || password.isEmpty) {
        print("NO EMAIL OR PASSWORD ENTERED")
    }
}
