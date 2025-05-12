//
//  DateNameView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct DateName : View {
    var sectionName: String
    var date: Date

    init(sectionName: String) {
        self.sectionName = sectionName
        self.date = Date()
    }
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMMM"
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: date).uppercased()
    }
    
    var body : some View {
        VStack(spacing: 0) {
            Text(formattedDate)
                .font(
                    Font.custom(
                        "Myanmar Khyay",
                        size: 14
                    )
                )
                .foregroundColor(Color.white)
                .opacity(0.5)
                .frame(
                    maxWidth: 116,
                    maxHeight: 20,
                    alignment: .leading
                )
            
            Text(sectionName)
                .font(
                    Font.custom(
                        "",
                        size: 20)
                )
                .frame(
                    maxWidth: 116,
                    maxHeight: 20,
                    alignment: .leading
                )
        }
    }
}

#Preview {
    DateName(
        sectionName: "Statistic"
    )
}
