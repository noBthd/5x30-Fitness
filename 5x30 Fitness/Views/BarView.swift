//
//  BarView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct Bar : View {
    
    var body : some View {
        ZStack(alignment: .bottom) {
            // BLUR TEST
            Rectangle()
                .fill(Color.red)
                .frame(
                    width: 50,
                    height: 50
                )
                .padding(.horizontal, 170)
            
            VStack() {
                Spacer()
                
                Rectangle()
                    .fill(Color("barColor"))
                    .frame(
                        maxWidth: .infinity,
                        minHeight: 80,
                        maxHeight: 80
                    )
                    .opacity(0.2)
                    .background(.ultraThinMaterial) // BLUR
            }
            .ignoresSafeArea(.container, edges: .bottom)
            
            HStack(spacing: 75) {
                // STATISTIC BUTTON
                Image("satImg")
                    .resizable()
                    .frame(
                        width: 30,
                        height: 30
                    )
                    .padding(.top, 10)
                    .padding(.horizontal, 10)
                
                Text("Statistic")
                    .font(
                        Font.custom(
                            "Myanmar Khyay",
                            size: 8
                        )
                    )
                    .frame(
                        width: 35,
                        height: 11.2
                    )
                    .foregroundColor(Color("navigationColor"))
                
                // FITNESS BUTTON
                Text("Fitness")
                    .font(
                        Font.custom(
                            "Myanmar Khyay",
                            size: 8
                        )
                    )
                    .frame(
                        width: 32,
                        height: 8.8
                    )
                    .foregroundColor(Color("navigationColor"))
                
                // BUTTON
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color("navigationColor"))
                        .cornerRadius(30)
                        .frame(
                            width: 30,
                            height: 30
                        )
                    
                    Text("Button")
                        .font(
                            Font.custom(
                                "Myanmar Khyay",
                                size: 8
                            )
                        )
                        .frame(
                            width: 28,
                            height: 8
                        )
                        .foregroundColor(Color("navigationColor"))
                }
            }
        }
    }
}

#Preview {
    Bar()
}
