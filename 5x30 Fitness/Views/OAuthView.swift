//
//  OtherAuthView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct OAuth : View {
    //TODO: add working functions
    let AppleAuth: () -> Void
    let GoogleAuth: () -> Void
    let GithubAuth: () -> Void
    
    var body : some View {
        VStack(spacing: 10) {
            Text("Or sign in with:")
                .font(
                    Font.custom(
                        "Myanmar Khyay",
                        size: 12
                    )
                )
                .frame(height: 22)
            HStack(spacing: 15) {
                // APPLE AUTH BUTTON
                Button(action: AppleAuth) {
                    ZStack(alignment: .leading){
                        Rectangle()
                            .fill(
                                Color("baseColor")
                            )
                        
                        Image("applelogo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.bottom, 12)
                            .padding(.top, 8)
                            .padding(.horizontal, 10)
                    }
                }
                .cornerRadius(12)
                .frame(width: 50, height: 50)
                
                // GOOGLE AUTH BUTTON
                Button(action: GoogleAuth) {
                    ZStack(alignment: .leading){
                        Rectangle()
                            .fill(
                                Color("baseColor")
                            )
                        
                        Image("googlelogo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(10)
                    }
                }
                .cornerRadius(12)
                .frame(width: 50, height: 50)
                
                // OAUTH BUTTON?
                Button(action: GithubAuth) {
                    ZStack(alignment: .leading){
                        Rectangle()
                            .fill(
                                Color("baseColor")
                            )
                        
                        Image("githublogo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(10)
                    }
                }
                .cornerRadius(12)
                .frame(width: 50, height: 50)
            }
        }
            
    }
}

#Preview {
    OAuth(
        AppleAuth: tmpFunc,
        GoogleAuth: tmpFunc,
        GithubAuth: tmpFunc
    )
}
