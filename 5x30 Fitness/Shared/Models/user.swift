//
//  user.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

import Foundation

struct User : Encodable, Decodable {
    let id: String
    let username: NullableString
    let email: String
    let password: String
    let hashed_password: String?
    let registration_date: String
}
