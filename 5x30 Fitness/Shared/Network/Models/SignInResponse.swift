//
//  SignInResponse.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 16.05.2025.
//

import Foundation

struct UserData : Decodable {
    let id: String
    let username: NullableString
    let email: String
    let password: String
    let hashed_password: String?
    let registration_date: String
}
