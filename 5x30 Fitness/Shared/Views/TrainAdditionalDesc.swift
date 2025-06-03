//
//  TrainAdditionalDesc.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 03.06.2025.
//

import SwiftUI

struct TrainAdditionalDesc : View {
    @State var time: String
    @State var kcal: String
    @State var diff: String
    
    init() {
        self.time = ""
        self.kcal = ""
        self.diff = ""
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.base)
                .cornerRadius(12)
            
            VStack(spacing: 10){
                HStack(spacing: 10) {
                    Text("Total time:")
                        .font(Font.custom("", size: 10))
                        .foregroundStyle(Color.white)
                        .frame(
                            maxWidth: 55
                        )
                    
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.white.opacity(0.3))
                            .cornerRadius(12)
                        TextField("...", text: $time)
                            .padding(.horizontal, 10)
                            .font(Font.custom("", size: 10))
                            .foregroundStyle(Color.white)
                    }
                    .frame(
                        width: 125,
                        height: 26
                    )
                }
                
                HStack(spacing: 10) {
                    Text("Total kcal:")
                        .font(Font.custom("", size: 10))
                        .foregroundStyle(Color.white)
                        .frame(
                            maxWidth: 55
                        )
                    
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.white.opacity(0.3))
                            .cornerRadius(12)
                        TextField("...", text: $kcal)
                            .padding(.horizontal, 10)
                            .font(Font.custom("", size: 10))
                            .foregroundStyle(Color.white)
                    }
                    .frame(
                        width: 125,
                        height: 26
                    )
                    
                }
                
                HStack(spacing: 10) {
                    Text("Difficulty:")
                        .font(Font.custom("", size: 10))
                        .foregroundStyle(Color.white)
                        .frame(
                            maxWidth: 55
                        )
                    
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.white.opacity(0.3))
                            .cornerRadius(12)
                        TextField("...", text: $diff)
                            .padding(.horizontal, 10)
                            .font(Font.custom("", size: 10))
                            .foregroundStyle(Color.white)
                    }
                    .frame(
                        maxWidth: 125,
                        maxHeight: 26,
                        alignment: .trailing
                    )
                    
                }
                .frame(maxWidth: 190, alignment: .trailing)
            }
        }
        .frame(
            width: 210,
            height: 120
        )
    }
}

#Preview {
    TrainAdditionalDesc()
}
