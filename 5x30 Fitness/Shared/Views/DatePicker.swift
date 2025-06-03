//
//  DatePicker.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 03.06.2025.
//

import SwiftUI

struct HorizontalDayPicker: View {
    @State private var selectedDate = Date()
    @State private var startIndex = 0
    
    private let calendar = Calendar.current
    private let viewWidth: CGFloat = 330
    private let dayItemWidth: CGFloat = 36
    private let visibleDays = 9
    private let monthsToShow = 3

    private var allDates: [Date] {
        let today = Date()
        var dates: [Date] = []

        for monthOffset in -1..<monthsToShow-1 {
            if let monthDate = calendar.date(byAdding: .month, value: monthOffset, to: today),
               let range = calendar.range(of: .day, in: .month, for: monthDate) {
                let components = calendar.dateComponents([.year, .month], from: monthDate)
                for day in range {
                    var dateComponents = components
                    dateComponents.day = day
                    if let date = calendar.date(from: dateComponents) {
                        dates.append(date)
                    }
                }
            }
        }
        return dates
    }

    var body: some View {
        VStack(spacing: 12) {
            // Title
            Text(formattedMonthYear(from: selectedDate))
                .font(.headline)
                .foregroundColor(.white)

            HStack(spacing: 8) {
                // Left button
                Button(action: {
                    if startIndex > 0 {
                        startIndex -= 1
                        selectedDate = allDates[startIndex]
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.green)
                }

                // Dates window
                HStack(spacing: 4) {
                    ForEach(currentWindow(), id: \.self) { date in
                        Text(formattedDay(from: date))
                            .frame(width: dayItemWidth, height: 40)
                            .background(Calendar.current.isDate(date, inSameDayAs: selectedDate) ? Color.green : Color.clear)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            .onTapGesture {
                                selectedDate = date
                                startIndex = allDates.firstIndex(of: date) ?? startIndex
                            }
                    }
                }
                .frame(width: viewWidth, height: 40)

                // Right button
                Button(action: {
                    if startIndex + visibleDays < allDates.count {
                        startIndex += 1
                        selectedDate = allDates[startIndex]
                    }
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.green)
                }
            }
        }
        .padding()
        .background(Color.black)
        .cornerRadius(12)
    }

    private func currentWindow() -> [Date] {
        let endIndex = min(startIndex + visibleDays, allDates.count)
        return Array(allDates[startIndex..<endIndex])
    }

    private func formattedDay(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter.string(from: date)
    }

    private func formattedMonthYear(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date).capitalized
    }
}

#Preview {
    HorizontalDayPicker()
}
