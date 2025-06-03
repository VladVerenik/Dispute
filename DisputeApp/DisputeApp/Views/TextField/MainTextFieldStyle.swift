//
//  MainTextFieldStyle.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainTextField {
    
    @ObservableState
    struct State: Equatable{
        var textFieldplaceholder: String
    }
    
    enum Action {
        case textFielTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .textFielTapped:
                return .none
            }
        }
        
    }
}

struct MainTextFieldView: View {
    let store: StoreOf<MainTextField>
    
    var body: some View {
        TextField(store.textFieldplaceholder, text: .constant(""))
            .textFieldStyle(MainTextFieldStyle())
    }
}
struct MainTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical)
            .padding(.horizontal)
                 .background(.white)
                 .clipShape(Capsule(style: .continuous))
            }
}


