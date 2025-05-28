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
//    @AppStorage("user") var user: User
    
    init() {
//        UserDefaults.standard.removeObject(forKey: "isLogged") TEST FOR CACHED USER LOGGED
        UserDefaults.standard.removeObject(forKey: "pageID")
        
        if(isLogged) {
            pageID = 0
        }
        
        // TESTED API QUERY
//        let endpoint = Endpoint(path: "/users", method: .GET)
//
//        APIClient.shared.request(to: endpoint, responseType: [UserData].self) { result in
//            switch result {
//            case .success(let users):
//                print(users)
//            case .failure(let error):
//                print("Error: \(error)")
//            }
//        }

    }
    
    var body: some Scene {
        WindowGroup {
            if isLogged {
                if pageID == 0 {            // STATISTIC SCREEN
                    StatScreenView()
                } else if pageID == 1 {     // FITNESS SCREEN
                    FitnessScreenView()
                } else if pageID == 2 {     // MAKE IT SCREEN
                    MakeItScreenView()
                } else if pageID == 3 {     // PROFILE SETTINGS SCREEN
                    ProfileSettingsView()
                }
            } else {
                SignInView()
            }
        }
    }
}
