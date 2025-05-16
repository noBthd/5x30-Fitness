//
//  UserPlateView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 16.05.2025.
//

import SwiftUI

struct UserPlate : View {
    var username: String
    var email: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .opacity(0.3)
                .cornerRadius(12)
            
            HStack {
                avatar
                
                userInfo
                    .padding(.leading, -10)
                
                Spacer()
                
                Image("arrowWhite")
                    .resizable()
                    .frame(
                        width: 20,
                        height: 20
                    )
                    .padding(.horizontal, 5)
                    .padding(.vertical, 10)
            }
        }
        .frame(
            width: 350,
            height: 60
        )
    }
    
    // SUBVIEW
    
    private var avatar : some View {
        ZStack {
            Rectangle()
                .fill(Color("baseColor"))
                .cornerRadius(20)
            
            Image("userWhite")
                .resizable()
                .opacity(0.3)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .frame(
            width: 40,
            height: 40
        )
        .padding(10)
    }
    
    private var userInfo : some View {
        VStack(spacing: 2) {
            Text(username)
                .font(
                    Font.custom(
                        "",
                        size: 14
                    )
                )
                .frame(
                    maxWidth: 73,
                    maxHeight: 15,
                    alignment: .leading
                )
            
                .padding(.leading, -10)
            
            Text(email)
                .font(
                    Font.custom(
                        "",
                        size: 10
                    )
                )
                .frame(
                    maxWidth: 82,
                    maxHeight: 13,
                    alignment: .leading
                )
        }
    }
}

#Preview {
    UserPlate(
        username: "Username",
        email: "test@gmail.com"
    )
}
