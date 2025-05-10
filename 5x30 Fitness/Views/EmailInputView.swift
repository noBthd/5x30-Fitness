//
//  EmailInputView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 09.05.2025.
//

import SwiftUI

struct EmailInput : View {
    
    var body : some View {
        VStack (spacing: 2){
            Text("Email")
                .multilineTextAlignment(.leading)
                .frame(width: 290)
                .foregroundStyle(Color.white)
            
            Rectangle()
                .frame(width: 300.0, height: 56.0)
                .background(Color("BaseColor"))
                .cornerRadius(12)
        }
    }
}

#Preview {
    EmailInput()
}
