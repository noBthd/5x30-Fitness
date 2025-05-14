//
//  ProfileSettingsView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

import SwiftUI

struct ProfileSettingsView : View {
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                userLogout(&isLogged)
            }) {
                Text("TEST")
            }
            .frame(
                width: 100,
                height: 100
            )

            Rectangle()
                .fill(Color.white)
                .frame(
                    width: 100,
                    height: 100
                )
        }
    }
}

#Preview {
    ProfileSettingsView()
}
