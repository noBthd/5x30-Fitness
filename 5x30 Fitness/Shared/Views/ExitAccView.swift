//
//  ExitAccView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 20.05.2025.
//

import SwiftUI

struct ExitAcc : View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .opacity(0.3)
                .cornerRadius(12)
            
            VStack {
                HStack {
                    Text("Change Account")
                        .font(
                            Font.custom("", size: 15)
                        )
                        .frame(
                            maxWidth: 124,
                            maxHeight: 20,
                            alignment: .leading
                        )
                        .foregroundStyle(Color("mainColor"))
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Image("arrowWhite")
                        .resizable()
                        .frame(
                            width: 20,
                            height: 20
                        )
                        .padding(.trailing, 5)
                }
                .frame(
                    width: 350
                )
                
                Divider()
                    .frame(
                        width: 350
                    )
                    .overlay(Color.white)
                HStack {
                    Text("Log out")
                        .font(
                            Font.custom("", size: 15)
                        )
                        .frame(
                            maxWidth: 58,
                            maxHeight: 15,
                            alignment: .leading
                        )
                        .foregroundStyle(Color("warnColor"))
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Image("arrowWhite")
                        .resizable()
                        .frame(
                            width: 20,
                            height: 20
                        )
                        .padding(.trailing, 5)
                }
                .frame(
                    width: 350
                )
            }
        }
        .frame(
            width: 350,
            height: 80
        )
    }
}

#Preview {
    ExitAcc()
}
