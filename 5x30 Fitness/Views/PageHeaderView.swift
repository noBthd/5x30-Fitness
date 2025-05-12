//
//  PageHeaderView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct PageHeader : View {
    var headerName: String
    var action: () -> Void
    
    var body: some View {
        VStack {
            HStack(spacing: 213) {
                DateName(sectionName: headerName)
                ProfileButton(action: action)
            }
        }
    }
}

#Preview {
    PageHeader(headerName: "Statistic", action: {})
}
