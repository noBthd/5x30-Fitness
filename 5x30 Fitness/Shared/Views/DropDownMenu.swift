//
//  DropDownMenu.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 04.06.2025.
//

import SwiftUI

//struct DropdownPicker: View {
//    @Binding var selectedExercise: String
//    @State private var isExpanded = false
//    
//    let options: [String]
//    
//    var body: some View {
//        VStack(spacing: 5) {
//            Button(action: {
//                withAnimation {
//                    isExpanded.toggle()
//                }
//            }) {
//                HStack {
//                    Text(selectedExercise.isEmpty ? "Выберите упражнение" : selectedExercise)
//                        .foregroundColor(.white)
//                    Spacer()
//                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
//                        .foregroundColor(.white)
//                }
//                .padding()
//                .background(Color.gray.opacity(0.3))
//                .cornerRadius(10)
//            }
//            
//            if isExpanded {
//                VStack(spacing: 0) {
//                    ForEach(options, id: \.self) { option in
//                        Button(action: {
//                            selectedExercise = option
//                            withAnimation {
//                                isExpanded = false
//                            }
//                        }) {
//                            HStack {
//                                Text(option)
//                                    .foregroundColor(.white)
//                                Spacer()
//                            }
//                            .padding()
//                            .background(Color.gray.opacity(0.2))
//                        }
//                        Divider().background(Color.white)
//                    }
//                }
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(10)
//            }
//        }
//        .animation(.easeInOut, value: isExpanded)
//    }
//}

//
//struct DropDownMenu : View {
//    enum Flavor: String, CaseIterable, Identifiable {
//        case chocolate, vanilla, strawberry
//        var id: Self { self }
//    }
//
//
//    @State private var selectedFlavor: Flavor = .chocolate
//    
//    var body: some View {
//        List {
//            Picker("Flavor", selection: $selectedFlavor) {
//                Text("Chocolate").tag(Flavor.chocolate)
//                Text("Vanilla").tag(Flavor.vanilla)
//                Text("Strawberry").tag(Flavor.strawberry)
//            }
//            .frame(
//                height: 30
//            )
//            .border(Color.red)
//            .background(Color.clear)
//        }
//        .border(Color.blue)
//        
//    }
//}
//
//#Preview {
//    DropDownMenu()
//}

