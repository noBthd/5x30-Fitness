//
//  ExercisePicker.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 04.06.2025.
//

import SwiftUI

struct ExercisePicker : View {
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(Color.base)
                .cornerRadius(12)
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Text("exersice set")
                        .font(Font.custom("", size: 14))
                        .frame(
                            maxWidth: 165,
                            maxHeight: 15,
                            alignment: .leading
                        )
                        .padding(.horizontal, 10)
//                        .padding(.vertical, 8)
                    
                    Spacer()
                    
                    Image("arrow")
                        .resizable()
                        .frame(width: 20, height: 20)
//                        .padding(.top, 5)
                        .padding(.trailing, 5)
                    
                }
                .padding(.bottom, -8)
                .offset(y: -4)
                
                Divider()
                
                // TMP
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    HStack(spacing: 10) {
                        Text("choose exercise")
                            .frame(
                                maxWidth: 310,
                                maxHeight: 15,
                                alignment: .leading
                            )
                            .foregroundStyle(Color.white)
                            .font(Font.custom("", size: 14))
                            .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        Image("arrowWhite")
                            .resizable()
                            .rotationEffect(.degrees(90))
                            .frame(
                                width: 20,
                                height: 20
                            )
                            .padding(.horizontal, 5)
                    }
                }
                .frame(
                    width: 330,
                    height: 25
                )
                
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    
                    VStack() {
                        Text("exersices")
                            .frame(
                                maxWidth: 310,
                                maxHeight: 15,
                                alignment: .leading
                            )
                        
                        Divider()
                            .background(Color.white)
                        
                        HStack(spacing: 10){
                            
                            ExersiceView()
                            ExersiceView()
                            
                        }
                        .padding(.horizontal, 10)
                    }
                }
                .frame(
                    width: 330,
                    height: 149
                )
                
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    Text("SAVE")
                        .foregroundStyle(Color.main)

                }
                .frame(
                    width: 330,
                    height: 30
                )
            }
        }
        .frame(
            width: 350,
            height: 277
        )
    }
    
    
}

#Preview {
    ExercisePicker()
}
