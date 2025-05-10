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
                BarButton(
                    notPickedImage: "statImg",
                    pickedImage: "pickedStatImg",
                    sectionName: "Statistic",
                    picked: true,
                    buttonAction: tmpFunc
                )
                
                // FITNESS BUTTON
                BarButton(
                    notPickedImage: "fitImg",
                    pickedImage: "pickedFitImg",
                    sectionName: "Fitness",
                    picked: false,
                    buttonAction: tmpFunc
                )
                
                // BUTTON
                BarButton(
                    notPickedImage: "statImg",
                    pickedImage: "pickedStatImg",
                    sectionName: "Statistic",
                    picked: false,
                    buttonAction: tmpFunc
                )
            }
        }
    }
}

#Preview {
    Bar()
}
