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
    
    init() {
        self.ExName = "ExName"
        self.ExDur = "ExDur"
        self.ExReps = "ExReps"
        self.ExRest = "ExRest"
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
            
            HStack(spacing: 10) {
                Text(ExName)
                    .font(Font.custom("", size: 12))
                
            }
        }
    }
}

#Preview {
    ExersiceView()
}
