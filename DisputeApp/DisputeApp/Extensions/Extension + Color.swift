//
//  Extension + Color.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 26.05.2025.
//
import SwiftUI

extension Color {
    static var mainBackgroud =
    LinearGradient(
        gradient: Gradient(colors: [.mainBackgroundUp, .mainBackgroundDown]),
        startPoint: .top,
        endPoint: .bottom
    )
    
}
