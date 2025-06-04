//
//  ExersiceView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 04.06.2025.
//

import SwiftUI

struct ExersiceView : View {
    @State var ExName: String
    @State var ExDur: String
    @State var ExReps: String
    @State var ExRest: String
    
    var action: () -> Void
    
    init() {
        self.ExName = "ExName"
        self.ExDur = "ExDur"
        self.ExReps = "ExReps"
        self.ExRest = "ExRest"
        self.action = {}
    }
        
    var body : some View {
        ZStack() {
            Rectangle()
                .fill(Color.base)
                .frame(
                    width: 150,
                    height: 98
                )
                .cornerRadius(12)
            
            VStack(spacing: 7){
                VStack(spacing: 6){
                    HStack(spacing: 10) {
                        Text(ExName)
                            .font(Font.custom("", size: 12))
                        
                        Spacer()
                        
                        Button(action: { action() }) {
                            Rectangle()
                                .fill(Color.warn)
                                .frame(
                                    width: 10,
                                    height: 2
                                )
                                .cornerRadius(12)
                        }
                    }
                    .frame(
                        width: 130
                    )
                    
                    Divider()
                }
                
                VStack(spacing: 5){
                    HStack() {
                        Text("Duration:")
                            .font(Font.custom("", size: 12))
                            .frame(
                                maxWidth: 67,
                                maxHeight: 16,
                                alignment: .leading
                            )
                        
                        ZStack() {
                            Rectangle()
                                .fill(Color.white.opacity(0.3))
                                .cornerRadius(12)
                            
                            Text(ExDur)
                                .font(Font.custom("", size: 12))
                                .frame(
                                    maxWidth: 58,
                                    maxHeight: 12
                                )
                        }
                        .frame(
                            width: 68,
                            height: 16
                        )
                    }
                    .frame(
                        width: 135
                    )
                    
                    
                    HStack() {
                        Text("Reps:")
                            .font(Font.custom("", size: 12))
                            .frame(
                                maxWidth: 67,
                                maxHeight: 16,
                                alignment: .leading
                            )
                        
                        ZStack() {
                            Rectangle()
                                .fill(Color.white.opacity(0.3))
                                .cornerRadius(12)
                            
                            Text(ExReps)
                                .font(Font.custom("", size: 12))
                                .frame(
                                    maxWidth: 58,
                                    maxHeight: 12
                                )
                        }
                        .frame(
                            width: 68,
                            height: 16
                        )
                    }
                    .frame(
                        width: 135
                    )
                    
                    
                    HStack() {
                        Text("Rest time:")
                            .font(Font.custom("", size: 12))
                            .frame(
                                maxWidth: 67,
                                maxHeight: 16,
                                alignment: .leading
                            )
                        
                        ZStack() {
                            Rectangle()
                                .fill(Color.white.opacity(0.3))
                                .cornerRadius(12)
                            
                            Text(ExRest)
                                .font(Font.custom("", size: 12))
                                .frame(
                                    maxWidth: 58,
                                    maxHeight: 12
                                )
                        }
                        .frame(
                            width: 68,
                            height: 16
                        )
                    }
                    .frame(
                        width: 135
                    )
                    
                    
                }
            }
            .frame(
                width: 150,
                height: 98
            )
        }
    }
}

#Preview {
    ExersiceView()
}
