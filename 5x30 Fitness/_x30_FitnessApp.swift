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
    @AppStorage("pageID") var pageID = 0
    
    init() {
        UserDefaults.standard.removeObject(forKey: "isLogged")
        UserDefaults.standard.removeObject(forKey: "pageID")
    }
    
    var body: some Scene {
        WindowGroup {
            if isLogged {
                if pageID == 0 {
                    StatScreenView()
                } else if pageID == 1 {
                    SignUpView()
                } else if pageID == 2 {
                    SignInView()
                }
            } else {
                SignInView()
            }
        }
    }
}
