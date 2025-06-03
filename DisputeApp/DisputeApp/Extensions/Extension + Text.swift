//
//  Extension + Text.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 26.05.2025.
//
//import SwiftUI

import SwiftUI

extension Text {
    func mainTitleStyle() -> Text {
        self .font(Fonts.Roboto.lightItalic.swiftUIFont(size: 30))
             .foregroundStyle( LinearGradient(
                gradient: Gradient(colors: [.mainTextLeft, .mainTextRight]),
                startPoint: .leading,
                endPoint: .trailing
            ))
    }

    func mainSubtitleStyle() -> Text {
        self  .font(Fonts.Roboto.lightItalic.swiftUIFont(size: 24))
            .foregroundStyle(.mainSubtitle)
            
    }
}
