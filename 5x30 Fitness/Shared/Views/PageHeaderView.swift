//
//  PageHeaderView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 12.05.2025.
//

import SwiftUI

struct PageHeader : View {
    var headerName: String
    
    @AppStorage("pageID") var pageID = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 130) {
                DateName(sectionName: headerName)
                ProfileButton(action: { pageID = 3 })
            }
        }
    }
}

#Preview {
    PageHeader(headerName: "Statistic")
}
