//
//  ProfileSettingsModel.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 14.05.2025.
//

import SwiftUI

func userLogout(
    _ isLogged: Binding<Bool>
) -> Void {
    print("USER LOGGED OUT")
    UserStorage.shared.user = nil
    isLogged.wrappedValue = false
}
