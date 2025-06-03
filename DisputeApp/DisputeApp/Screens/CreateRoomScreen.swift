//
//  CreateRoomScreen.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 22.05.2025.
//
import SwiftUI
import ComposableArchitecture

@Reducer
struct CreateRoom {
    
    @ObservableState
    struct State: Equatable {
        var gearButton = MainImageButton.State(buttonImage: .gear)
        var onlineButton = MainButton.State(buttonTitle: "Online")
        var localButton = MainButton.State(buttonTitle: "Local")
    }
    
    enum Action {
        case gearButton(MainImageButton.Action)
        case onlineButton(MainButton.Action)
        case localButton(MainButton.Action)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .gearButton:
                return .none
            case .onlineButton:
                return .none
            case .localButton:
                return .none
                
            }
        }
    }
}

struct CreateRoomScreen: View {
    let store: StoreOf<CreateRoom>
    
    var body: some View {
        VStack {
            HStack{
                Spacer()

                Text("Enter Room Number")
                    .mainTitleStyle()
                                
                MainImageButtonView(store: store.scope(state: \.gearButton, action: \.gearButton))
                    .padding()
                
            }
            
            Spacer()
            
            Image(.createRoom)
            
            Spacer()
            
            VStack{
                MainButtonview(store: store.scope(state: \.onlineButton, action: \.onlineButton))
                    .buttonStyle(GrayButtonStyle())
                                
                MainButtonview(store: store.scope(state: \.localButton, action: \.localButton))
                    .buttonStyle(PinkButtonStyle())
                
            }.padding()
            
        }.containerRelativeFrame([.horizontal, .vertical])
            .background(Color.mainBackgroud)

    }
    
}

#Preview {
    CreateRoomScreen(
        store: StoreOf<CreateRoom>(
            initialState: CreateRoom.State(),
            reducer: { CreateRoom() }
        )
    )
}
