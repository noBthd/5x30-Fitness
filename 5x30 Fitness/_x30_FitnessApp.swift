//
//  _x30_FitnessApp.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

@main
struct _x30_FitnessApp: App {
    @State private var isRegistrated: Bool = false
    
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
