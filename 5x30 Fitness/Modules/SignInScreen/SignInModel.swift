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
    _ password: String,
    completion: @escaping (Bool) -> Void
) -> Void {
    print("USER SIGNED IN: email: \(email), password: \(password)")

    if (email.isEmpty || password.isEmpty) {
        print("NO EMAIL OR PASSWORD ENTERED")
        completion(false)
        return
    }
    
    let queryItems = [
        URLQueryItem(name: "email", value: email),
        URLQueryItem(name: "password", value: password),
    ]

    let endpoint = Endpoint(path: "/signIn", method: .GET, queryItems: queryItems)
    
    APIClient.shared.request(to: endpoint, responseType: [User].self) { result in
        switch result {
        case .success(let users):
            if let firstUser = users.first {
                print("SIGNED IN SUCCESSFULY")
                UserStorage.shared.user = firstUser
                completion(true)
            } else {
                print("NO USER FOUND IN RESPONSE ")
                completion(false)
            }
        case .failure(let error):
            print(error)
            completion(false)
            return
        }
    }
}
