//
//  StatScreenView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct StatScreenView : View {
    var body : some View {
        VStack() {
            PageHeader(
                headerName: "Statistic",
                action: {}
            )
            
            Spacer()
            
            Bar(
                statButtonActtion: {},
                fitButtonAction: {},
                someButtonAcion: {}
            )
        }
    }
}

#Preview {
    StatScreenView()
}
