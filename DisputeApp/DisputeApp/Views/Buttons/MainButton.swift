//
//  MainButton.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 21.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainButton {
    
    @ObservableState
    struct State: Equatable{
        var buttonTitle: String
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct MainButtonview: View {
    let store: StoreOf<MainButton>
    
    var body: some View {
        Button {
            
        } label: {
            Text(store.buttonTitle)
                .font(Fonts.Roboto.lightItalic.swiftUIFont(size: 18))
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
        }
    }
}

struct GrayButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(30)
    }
}

struct PinkButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .background(.mainButton)
            .cornerRadius(30)
    }
}

struct YellowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(.yellowButton)
            .foregroundColor(.gray)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 5.0, x: 0, y: 5)
    }
}

