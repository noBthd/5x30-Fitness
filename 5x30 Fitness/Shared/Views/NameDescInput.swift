//
//   NameDescInput.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 03.06.2025.
//

import SwiftUI

struct NameDescInput : View {
    @State var TrainName: String
    @State var TrainDesc: String
    
    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color("baseColor"))
                .cornerRadius(12)
            
            VStack(spacing: 10) {
                HStack {
                    Text("Create your train")
                        .frame(
                            minWidth: 315,
                            minHeight: 15,
                            alignment: .leading
                        )
                        .font(Font.custom("", size: 14))
                        .foregroundStyle(Color.white)
                    
                    Image("arrow")
                        .resizable()
                        .frame(
                            width: 20,
                            height: 20
                        )
                        .padding(.trailing, -5)
                }
                
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, -10)
                
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    
                    TextField(
                        "train name",
                        text: $TrainName
                    )
                    .padding(10)
                }
                .frame(
                    width: 340,
                    height: 35
                )
                
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    
                    TextEditor(text: $TrainDesc)
                        .padding(5)
                        .font(.custom("", size: 14))
                        .foregroundColor(.white)
                        .background(Color.clear)
                        .scrollContentBackground(.hidden)
                        .frame(minWidth: 320, minHeight: 89, alignment: .top)

                }
                .frame(
                    width: 340,
                    height: 89
                )
                
            }
            .padding(10)
        }
        .frame(
            width: 350,
            height: 190
        )
    }
}

#Preview {
    NameDescInput(TrainName: "", TrainDesc: "")
}
