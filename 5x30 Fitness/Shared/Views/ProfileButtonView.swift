//
//  ProfileButtonView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct ProfileButton : View {
    let action: () -> Void
    
    var body: some View {
        NavigationLink(destination: ProfileSettingsView()) {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .opacity(0.4)
                    .cornerRadius(15)

                Image("user")
                    .resizable()
            }
            .frame(
                width: 30,
                height: 30
            )
        }
    }
}


#Preview {
    ProfileButton(action: {})
}
