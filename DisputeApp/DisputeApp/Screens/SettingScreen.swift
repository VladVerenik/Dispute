//
//  SettingScreen.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Setting {
    
    @ObservableState
    struct State: Equatable {
        var crossButton = MainImageButton.State(buttonImage: .cross)
    }
    
    enum Action {
        case crossButton(MainImageButton.Action)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .crossButton:
                return .none
                
            }
        }
    }
}

struct SettingScreen: View {
    let store: StoreOf<Setting>
    
    var body: some View {
        VStack {
            HStack{
                Spacer()

                Text("Setting")
                    .mainTitleStyle()
                
                Spacer()
                
                
                MainImageButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
            }.padding(.horizontal, 30)
            
            Spacer()
            
            Image("")
            
            
          
            
        }.containerRelativeFrame([.horizontal, .vertical])
            .background(Color.mainBackgroud)
    }
    
}

#Preview {
    SettingScreen(
        store: StoreOf<Setting>(
            initialState: Setting.State(),
            reducer: { Setting() }
        )
    )
}
