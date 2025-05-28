//
//  UserUtils.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 28.05.2025.
//

import Foundation
//
//func signIn(
//    _ email: String
//) -> User {
//    let queryItems = [
//        URLQueryItem(name: "email", value: email)
//    ]
//
//    let endpoint = Endpoint(path: "/user", method: .GET, queryItems: queryItems)
//    
//    APIClient.shared.request(to: endpoint, responseType: [UserData].self) { result in
//        switch result {
//        case .success:
//            print("USER GETTED")
//        case .failure(let error):
//            print(error)
//            return
//        }
//    }
//}

class UserStorage {
    static let shared = UserStorage()
    private let userKey = "user"
    
    var user: User? {
        get {
            guard let data = UserDefaults.standard.data(forKey: userKey) else { return nil }
            return try? JSONDecoder().decode(User.self, from: data)
        }
        set {
            if let newValue = newValue {
                let data = try? JSONEncoder().encode(newValue)
                UserDefaults.standard.set(data, forKey: userKey)
            } else {
                UserDefaults.standard.removeObject(forKey: userKey)
            }
        }
    }
}
