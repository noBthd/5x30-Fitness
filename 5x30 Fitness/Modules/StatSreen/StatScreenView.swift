//
//  StatScreenView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct StatScreenView : View {
    @AppStorage("pageID") var pageID = 0
    
    var body : some View {
        NavigationStack {
            VStack() {
                ZStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        PageHeader(
                            headerName: "Statistic",
                            action: {}
                        )
                        .padding(.bottom, 20)
                        
                        HStack(spacing: 20) {
                            VStack(spacing: 20) {
                                
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                            }
                            
                            VStack(spacing: 20) {
                                
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                                SmallInfoBlock(
                                    blockTitle: "Test"
                                )
                            }
                        }
                        .padding(.bottom, 70)
                        
                    }
                    .frame(
                        width: 350
                    )
                    
                    
                    Bar(
                        statButtonActtion: { pageID = 0 },
                        fitButtonAction:   { pageID = 1 },
                        someButtonAcion:   { pageID = 2 }
                    )
                }
            }
        }
    }
}

#Preview {
    StatScreenView()
}
