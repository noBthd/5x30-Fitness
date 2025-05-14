//
//  passwordUtils.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

struct Password {
    private var password: String = ""
    private var hashedPasswrod: String = ""
    
    func getPassword() -> String {
        return password
    }
    
    func setPassword(
        newPassword: String
    ) -> Void {
//        password = newPassword
    }
}
