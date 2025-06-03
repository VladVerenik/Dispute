//
//  GameIcons.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct GameIcons {
    
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        let imageName: String
    }

    enum Action {
        case didTap
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .didTap:
                return .none
            }
        }
    }
}

    

struct GameIconsView: View {
    let store: StoreOf<GameIcons>
    
    var body: some View {
        Button {
            store.send(.didTap)
        } label: {
            Image(store.imageName)
                .resizable()
                .scaledToFit()
                .shadow(radius: 3)
        }
    }
}

