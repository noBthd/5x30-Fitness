//
//  ProfileSettingsView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

import SwiftUI

struct ProfileSettingsView : View {
    @AppStorage("isLogged") var isLogged = false
//    @AppStorage("username") var username = "username"
//    @AppStorage("email") var email = "test@gmail.com"
    
    var body: some View {
        VStack(spacing: 20) {
            UserPlate(
                username: UserStorage.shared.user?.username.String ?? "username",
                email: UserStorage.shared.user?.email ?? "email"
            )
            
            ExitAcc(
                logOutAction: { userLogout($isLogged) },
                changeAccoutAction: {}
            )
            
            Spacer()
        }
//        .onAppear {
//            username = UserStorage.shared.user?.username.String ?? "username"
//            email = UserStorage.shared.user?.email ?? "test@gmail.com"
//        }
    }
}

#Preview {
    ProfileSettingsView()
}
