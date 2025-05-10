//
//  BarButtonView.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 10.05.2025.
//

import SwiftUI

struct BarButton : View {
    private let notPickedImage: String
    private let pickedImage: String
    private let image: String
    
    private let sectionName: String
    
    var picked: Bool = false
    var buttonColor: String = "navigationColor"
    
    let buttonAction: () -> Void
    
    init(notPickedImage: String, pickedImage: String,
         sectionName: String, picked: Bool,
         buttonAction: @escaping () -> Void) {
        self.notPickedImage = notPickedImage
        self.pickedImage = pickedImage
        self.image = picked ? pickedImage : notPickedImage
        self.sectionName = sectionName
        self.picked = picked
        self.buttonColor = picked ? "mainColor" : "navigationColor"
        self.buttonAction = buttonAction
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            Button(action: buttonAction) {
                VStack {
                    Image(image)
                        .resizable()
                        .frame(
                            width: 30,
                            height: 30
                        )
                    
                    Text(sectionName)
                        .font(
                            Font.custom(
                                "Myanmar Khyay",
                                size: 8)
                        )
                        .foregroundColor(Color(buttonColor))
                }
            }
        }
    }
}

#Preview {
    BarButton(
        notPickedImage: "fitImg",
        pickedImage: "pickedFitImg",
        sectionName: "Fitness",
        picked: true,
        buttonAction: tmpFunc
    )
}
