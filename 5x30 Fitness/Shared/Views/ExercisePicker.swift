//
//  ExercisePicker.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 04.06.2025.
//

//TODO: FIX REMOVE BUTTON 

import SwiftUI

struct ExercisePicker : View {
    @StateObject var viewModel = ExerciseViewModel()
    @State var selectedEx: Int? = -1
    
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(Color.base)
                .cornerRadius(12)
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Text("exercise set")
                        .font(Font.custom("", size: 14))
                        .frame(
                            maxWidth: 165,
                            maxHeight: 15,
                            alignment: .leading
                        )
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    Image("arrow")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 5)
                    
                }
                .padding(.bottom, -8)
                .offset(y: -4)
                
                Divider()
                
                Picker("Exercise", selection: $selectedEx) {
                    ForEach(viewModel.allExercises, id: \.ID) { item in
                        Text(item.Name).tag(item.ID)
                    }
                }
                .tint(.main)
                .frame(width: 330, height: 30)
                .background(Color.white.opacity(0.3))
                .cornerRadius(12)
                
                ZStack() {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .cornerRadius(12)
                    
                    VStack() {
                        Text("exercises")
                            .frame(
                                maxWidth: 310,
                                maxHeight: 15,
                                alignment: .leading
                            )
                            .font(Font.custom("", size: 14))
                        
                        Divider()
                            .background(Color.white)
                        

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(viewModel.selectedExercises.indices, id: \.self) { index in
                                    let exercise = viewModel.selectedExercises[index]
                                    ExersiceView(Ex: exercise, action: { viewModel.removeExercise(index) })
                                }
                            }
                        }
                        .frame(
                            height: 108
                        )
                        
                        .padding(.horizontal, 10)
                    }
                }
                .frame(
                    width: 330,
                    height: 149
                )
                
                ZStack() {
                    Button(action: {
                        if let id = selectedEx {
                            viewModel.appendExercise(id - 1)
                        }
                    }) {
                        ZStack() {
                            Rectangle()
                                .fill(Color.white.opacity(0.3))
                                .cornerRadius(12)
                            Text("ADD")
                                .foregroundStyle(Color.main)
                        }
                    }
                }
                .frame(
                    width: 330,
                    height: 30
                )
            }
        }
        .frame(
            width: 350,
            height: 277
        )
    }
    
    
}

#Preview {
    ExercisePicker()
}
