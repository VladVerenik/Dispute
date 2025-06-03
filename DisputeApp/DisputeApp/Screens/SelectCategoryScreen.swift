//
//  SelectCategoryScreen.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture

enum SelectCategoryScreenType {
    case main
    case first
    case second
}

@Reducer
struct SelectCategory {
    
    @ObservableState
    struct State: Equatable{
        var myType: SelectCategoryScreenType
        var crossButton = MainImageButton.State(buttonImage: .cross)
        var gameIcons: IdentifiedArrayOf<GameIcons.State> = []
        
        var title: String {
            switch myType {
                
            case .main:
                "Select category"
            case .first:
                "50/50"
            case .second:
                "Quiz"
            }
        }
    }
    
    enum Action {
        case onAppear
        case gameIcons(IdentifiedActionOf<GameIcons>)
        case crossButton(MainImageButton.Action)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                
                var stickerNames: [String] = []
                
                switch state.myType {
                case .main:
                    stickerNames = [
                        ("HalfCoin"),
                        ("Quiz"),
                        ("HalfCoin"),
                        ("HalfCoin"),
                    ]
                case .first:
                    stickerNames = [
                        ("Coin"),
                        ("GGG"),
                        ("GGG"),
                        ("GGG"),
                    ]
                case .second:
                    stickerNames = [
                        ("GGG"),
                        ("FFF"),
                        ("FFF"),
                        ("GGG"),
                    ]
                }
                
                state.gameIcons = IdentifiedArray(uniqueElements: stickerNames.map{
                    GameIcons.State(id: UUID(), imageName: "\($0)")
                })
                return .none
            case .gameIcons(.element(id: UUID(), action: .didTap)):
                return .none
            case .gameIcons:
                return .none
            case .crossButton:
                return .none
            }
        }
    }
}

struct SelectCategoryScreen: View {
    let store: StoreOf<SelectCategory>
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 10), count: 2)
    
    var body: some View {
        VStack {
            HStack{
                MainImageButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
                Spacer()

                Text(store.title)
                    .mainTitleStyle()
                    .multilineTextAlignment(.center)
                
                Spacer()
            }.padding()
            
            LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(store.scope(state: \.gameIcons, action: \.gameIcons)){ GameIconsView(store: $0)}
                }.padding(.horizontal, 0)
            
        }.containerRelativeFrame([.horizontal, .vertical])
            .background(Color.mainBackgroud)
            .onAppear{
                store.send(.onAppear)
            }
        
    }
}

#Preview {
    SelectCategoryScreen(
        store: StoreOf<SelectCategory>(
            initialState: SelectCategory.State(myType: .main),
            reducer: { SelectCategory() }
        )
    )
}
