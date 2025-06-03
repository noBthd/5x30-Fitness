//
//  Untitled.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 03.06.2025.
//

import SwiftUI

struct SaveTarinButton : View {
    let action: () -> Void
    
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(Color.base)
                .cornerRadius(12)
            
            Button(action: { print("SAVE BUTTON PRESSED"); action()}) {
                ZStack {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    
                    Text("SAVE YOUR TRAIN")
                        .padding(10)
                        .foregroundStyle(Color.main)
                }
                .padding(10)
            }
        }
        .frame(
            width: 120,
            height: 120
        )
    }
}

#Preview {
//    SaveTarinButton(action: tmpFunc())
}
