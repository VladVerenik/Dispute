////
////  ConnectionSelectScreen.swift
////  DisputeApp
////
////  Created by Kazimir Kozulia on 22.05.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct ConnectionSelect {
//    
//    @ObservableState
//    struct State: Equatable {
//        var crossButton = MainImageButton.State(buttonImage: .cross)
//        var createButton = MainButton.State(buttonTitle: "Create")
//        var connectButton = MainButton.State(buttonTitle: "Connect")
//    }
//    
//    enum Action {
//        case crossButton(MainImageButton.Action)
//        case createButton(MainButton.Action)
//        case connectButton(MainButton.Action)
//    }
//    
//    var body: some ReducerOf<Self> {
//        Reduce { state, action in
//            switch action {
//            case .crossButton:
//                return .none
//                
//            case .createButton:
//                return .none
//                
//            case .connectButton:
//                return .none
//                
//            }
//        }
//    }
//}
//
//struct ConnectionSelectScreen: View {
//    let store: StoreOf<ConnectionSelect>
//    
//    var body: some View {
//        VStack {
//            HStack{
//               
//                MainImageButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
//                Spacer()
//            }.padding()
//            Spacer()
//            
//            Image("")
//            
//            Spacer()
//            
//            HStack{
//                MainButtonview(store: store.scope(state: \.createButton, action: \.createButton))
//                    .buttonStyle(PinkButtonStyle())
//                                
//                MainButtonview(store: store.scope(state: \.connectButton, action: \.connectButton))
//                    .buttonStyle(PinkButtonStyle())
//                
//            }.padding(.horizontal, 30)
//            
//        }.containerRelativeFrame([.horizontal, .vertical])
//            .background(Color.mainBackgroud)
//    }
//    
//}
//
//#Preview {
//    ConnectionSelectScreen(
//        store: StoreOf<ConnectionSelect>(
//            initialState: ConnectionSelect.State(),
//            reducer: { ConnectionSelect() }
//        )
//    )
//}
