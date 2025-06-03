////
////  ConnectScreen.swift
////  DisputeApp
////
////  Created by Kazimir Kozulia on 22.05.2025.
////
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct Connect {
//    
//    @ObservableState
//    struct State: Equatable {
//        var crossButton = MainImageButton.State(buttonImage: .cross)
//        var connectButton = MainButton.State(buttonTitle: "Connect")
//        var numberRoomTextField = MainTextField.State(textFieldplaceholder: "Enter room number")
//    }
//    
//    enum Action {
//        case crossButton(MainImageButton.Action)
//        case connectButton(MainButton.Action)
//        case numberRoomTextField(MainTextField.Action)
//    }
//    
//    var body: some ReducerOf<Self> {
//        Reduce { state, action in
//            switch action {
//            case .crossButton:
//                return .none
//                
//            case .connectButton:
//                return .none
//                
//            case .numberRoomTextField:
//                return .none
//            }
//        }
//    }
//}
//
//struct ConnectScreen: View {
//    let store: StoreOf<Connect>
//    
//    var body: some View {
//        VStack {
//            HStack{
//                Spacer()
//                MainImageButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
//            }
//            Text("Enter Room Number")
//                .mainTitleStyle()
//            Spacer()
//            
//            Image("")
//                
//            
//            Spacer()
//            
//            
//            MainTextFieldView(store: store.scope(state: \.numberRoomTextField, action: \.numberRoomTextField))
//                
//            
//            Spacer()
//            
//            MainButtonview(store: store.scope(state: \.connectButton, action: \.connectButton))
//                .buttonStyle(YellowButtonStyle())
//            
//            
//            
//            
//        }.padding(.horizontal, 30)
//        .containerRelativeFrame([.horizontal, .vertical])
//            .background(Color.mainBackgroud)
//
//    }
//    
//}
//
//#Preview {
//    ConnectScreen(
//        store: StoreOf<Connect>(
//            initialState: Connect.State(),
//            reducer: { Connect() }
//        )
//    )
//}
