//
//  SmallInfoBlockView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct SmallInfoBlock : View {
    var blockTitle: String
    
    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color("baseColor"))
                .cornerRadius(12)
            
            VStack(){
                HStack() {
                    Text(blockTitle)
                        .font (
                            Font.custom (
                                "String",
                                size: 15
                            )
                        )
                        .frame(
                            maxWidth: 110,
                            alignment: .leading
                        )
                    Image("arrow")
                        .resizable()
                        .frame(
                            width: 20,
                            height: 20
                        )
                        .offset(
                            x: 10
                        )
                }
                
                Divider()
                    .frame(
                        width: 165
                    )
                    .padding(.horizontal, -10)
                //ANY OHTER COMPONENTS
                Spacer()
            }
            .padding(10)
        }
        .frame(
            width: 165,
            height: 165
        )
    }
}

#Preview {
    SmallInfoBlock(
        blockTitle: "Bench press"
    )
}
