//
//  MakeItScreenModel.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 20.05.2025.
//

import SwiftUI

class ExerciseViewModel: ObservableObject {
    @Published var allExercises: [Exercise] = []
    @Published var selectedExercises: [Exercise] = []
    
    init() {
        allExercises = loadExersices()
    }
    
    func getAllExercises() -> [Exercise] {
        if(allExercises.isEmpty) {
            return []
        }
        
        return allExercises
    }
    
    func getSelectedExercises() -> [Exercise] {
        if(selectedExercises.isEmpty) {
            return []
        }
        
        return selectedExercises
    }

    func loadExersices() -> [Exercise] {
        // tmp logic
        return [
            Exercise(ID: 1, Name: "Push Ups", Dur: "30s", Reps: "15", Rest: "10s"),
            Exercise(ID: 2, Name: "Squats", Dur: "45s", Reps: "20", Rest: "15s"),
            Exercise(ID: 3, Name: "Plank", Dur: "60s", Reps: "1", Rest: "30s")
        ]
    }
    
    func appendExercise(_ id: Int) {
        guard id >= 0 && id < allExercises.count else { return }
        let exercise = allExercises[id]
        
        if !selectedExercises.contains(where: { $0.Name == exercise.Name }) {
            selectedExercises.append(exercise)
        }
    }

    func removeExercise(_ id: Int) {
        guard id >= 0 && id < selectedExercises.count else { return }
        selectedExercises.remove(at: id)
    }
    
    func toggleExercise(_ exercise: Exercise) {
        if let index = selectedExercises.firstIndex(where: { $0.Name == exercise.Name }) {
            selectedExercises.remove(at: index)
        } else {
            selectedExercises.append(exercise)
        }
    }
}
