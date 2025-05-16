//
//  SignInResponse.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 16.05.2025.
//

import Foundation

struct SignInResponse : Decodable {
    let token: String
    let userID: Int
}
