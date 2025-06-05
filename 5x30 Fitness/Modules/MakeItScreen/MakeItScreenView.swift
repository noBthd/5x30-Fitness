//
//  MakeItScreen.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 20.05.2025.
//

import SwiftUI

struct MakeItScreenView : View {
    @AppStorage("pageID") var pageID = 0
    @State var TrainName: String
    @State var TrainDesc: String
    @State var TrainTime: String
    @State var TrainKcal: String
    @State var TrainDiff: String
    
    init() {
        self.pageID = 0
        self.TrainName = ""
        self.TrainDesc = ""
        self.TrainTime = ""
        self.TrainKcal = ""
        self.TrainDiff = ""
    }
    
    var body : some View {
        NavigationStack {
            VStack() {
                ZStack(alignment: .top) {
                    VStack(spacing: 20){
                        PageHeader(headerName: "Make It")
                        
                        NameDescInput(TrainName: TrainName, TrainDesc: TrainDesc)

                        ExercisePicker()
                        
                        HStack(spacing: 20) {
                            TrainAdditionalDesc(
                                time: TrainTime,
                                kcal: TrainKcal,
                                diff: TrainDiff
                            )
                            
                            SaveTarinButton(action: {})
                        }
                        .frame(width: 350)
                    }
                    
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
}


#Preview {
    MakeItScreenView()
}
