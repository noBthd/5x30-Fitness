//
//  SignInModel.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import Foundation

func signUp(
    _ email:    String,
    _ password: String,
    completion: @escaping (Bool) -> Void
) -> Void {
    print("USER SIGNED UP: email: \(email), password: \(password)")
    
    if (email.isEmpty || password.isEmpty) {
        print("NO EMAIL OR PASSWORD ENTERED")
        completion(false)
        return
    }
    
    let params = [
        "email": email,
        "password": password
    ]
    let bodyData = try? JSONSerialization.data(withJSONObject: params)

    let endpoint = Endpoint(path: "/signUp", method: .POST, body: bodyData)
    
    APIClient.shared.request(to: endpoint, responseType: SuccesResponse.self) { result in
        switch result {
        case .success:
            print("Signed up successfully")
            completion(true)
        case .failure(let error):
            print(error)
            completion(false)
            return
        }
    }
}
