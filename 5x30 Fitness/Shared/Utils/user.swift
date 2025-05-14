//
//  user.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

import SwiftUI

struct User {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: Password
    
    @AppStorage("isLogged") var isLogged = false
}
