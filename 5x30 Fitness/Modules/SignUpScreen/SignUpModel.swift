//
//  SignInModel.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

func signUp(
    _ email:    String,
    _ password: String,
    _ isLogged: inout Bool
) -> Void {
    print("USER SIGNED UP: email: \(email), password: \(password)")
    isLogged = true
    print("IS LOGGED?: \(isLogged)")
}
