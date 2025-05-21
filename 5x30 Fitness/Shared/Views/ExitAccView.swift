//
//  ExitAccView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 20.05.2025.
//

import SwiftUI

struct ExitAcc : View {
    @AppStorage("isLogged") var isLogged = false
    
    var logOutAction: () -> Void
    var changeAccoutAction: () -> Void
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .opacity(0.3)
                .cornerRadius(12)
            
            ZStack {
                VStack {
                    Button(action: changeAccoutAction) {
                        Rectangle()
                            .opacity(0)
                    }
                        .frame(
                            width: 350,
                            height: 40
                        )
                    
                    Button(action: logOutAction) {
                        Rectangle()
                            .opacity(0)
                    }
                        .frame(
                            width: 350,
                            height: 40
                        )
                        .padding(.vertical, -5)
                }
                
                VStack {
//                    ZStack {
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
//                    }
                    
                    Divider()
                        .frame(
                            width: 350
                        )
                        .overlay(Color.white)
                    
//                    ZStack {
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
//                    }
                }
            }
        }
        .frame(
            width: 350,
            height: 80
        )
    }
}




#Preview {
    struct PreviewWrapper: View {
        @State var isLogged = true

        var body: some View {
            ExitAcc(
                logOutAction: { isLogged = false },
                changeAccoutAction: {}
            )
        }
    }

    return PreviewWrapper()
}
