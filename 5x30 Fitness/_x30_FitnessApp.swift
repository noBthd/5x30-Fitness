//
//  _x30_FitnessApp.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

@main
struct _x30_FitnessApp: App {
    // MAIN VARs
    @AppStorage("isLogged") var isLogged = false
    
    
    var body: some Scene {
        WindowGroup {
            if isLogged {
                StatScreenView()
            } else {
                SignInView()
            }
        }
    }
}
