//
//  exersice.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 04.06.2025.
//

struct Exercise : Encodable, Decodable {
    var ID: Int
    var Name: String
    var Dur: String
    var Reps: String
    var Rest: String
}
