//
//  MakeItScreen.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 20.05.2025.
//

import SwiftUI

struct MakeItScreenView : View {
    @AppStorage("pageID") var pageID = 0
    
    var body : some View {
        NavigationStack {
            VStack {
                PageHeader(headerName: "Make It")
                    .padding(.bottom, 20)
                    .padding(.horizontal, 15)
                
                Spacer()
                
                Bar(
                    statButtonActtion: { pageID = 0 },
                    fitButtonAction:   { pageID = 1 },
                    MakeItButtonAcion: { pageID = 2 },
                    
                    statPicked: false,
                    fitPicked: false,
                    MakeItPicked: true
                )
            }
        }
    }
}


#Preview {
    MakeItScreenView()
}
