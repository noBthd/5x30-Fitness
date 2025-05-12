//
//  BarView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct Bar : View {
    //TODO: add switching variebles
    let statButtonActtion: () -> Void
    let fitButtonAction: () -> Void
    let someButtonAcion: () -> Void
    
    
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
                    buttonAction: statButtonActtion
                )
                
                // FITNESS BUTTON
                BarButton(
                    notPickedImage: "fitImg",
                    pickedImage: "pickedFitImg",
                    sectionName: "Fitness",
                    picked: false,
                    buttonAction: fitButtonAction
                )
                
                // BUTTON
                BarButton(
                    notPickedImage: "statImg",
                    pickedImage: "pickedStatImg",
                    sectionName: "Statistic",
                    picked: false,
                    buttonAction: someButtonAcion
                )
            }
        }
    }
}

#Preview {
    Bar(
        statButtonActtion: {},
        fitButtonAction: {},
        someButtonAcion: {}
    )
}
