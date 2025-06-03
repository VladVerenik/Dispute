//
//  MainImageButton.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 21.05.2025.
//
import SwiftUI
import ComposableArchitecture

@Reducer
struct MainImageButton {
    
    @ObservableState
    struct State: Equatable{
        var buttonImage: ImageResource
//        var imageFrame: CGFloat?
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

struct MainImageButtonView: View {
    let store: StoreOf<MainImageButton>
    
    var body: some View {
        Button {
            
        } label: {
            Image(store.buttonImage)
//                .frame(width: store.imageFrame, height: store.imageFrame)
        }
    }
}
