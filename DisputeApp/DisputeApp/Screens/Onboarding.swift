//
//  Onboarding.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 21.05.2025.
//

import SwiftUI
import ComposableArchitecture

enum Onboardingtype {
    case first
    case second
    case third

}

@Reducer
struct Onboarding {
    
    @ObservableState
    struct State: Equatable{
        var crossButton = MainImageButton.State(buttonImage: .cross)
        var continueButton = MainButton.State(buttonTitle: "Continue")
        var myType: Onboardingtype
        
        var mainTitile: String {
            switch myType {
            case .first:
                "Hello"

            case .second:
                "Many options"

            case .third:
                "Try it now"

            }
        }
        
        var subTitile: String {
            switch myType {
            case .first:
                "This app is created specifically for dispute resolution"
                
            case .second:
                "Choose a convenient way to resolve the dispute"

            case .third:
                "Add a friend, create a room and get started!"

            }
        }
        
        var backgroundImage: ImageResource {
            switch myType {
            case .first:
                .firstOnboardingBackground
            case .second:
                .secondOnboardingBackground
            case .third:
                .thirdOnboardingBackground
            }
        }
    }
    
    enum Action {
        case crossButton(MainImageButton.Action)
        case continueButton(MainButton.Action)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .crossButton:
                return .none
            case .continueButton:
                return .none
            }
        }
    }
}

struct OnboardingScreens: View {
    let store: StoreOf<Onboarding>
    
    var body: some View {
        VStack{
            HStack{
                MainImageButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
                
                Spacer()
                
                Text(store.mainTitile)
                    .mainTitleStyle()
                
                Spacer()
            }.padding()
            
            Text(store.subTitile)
                .mainSubtitleStyle()
                .padding(.horizontal, 30)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Image(store.backgroundImage)
            
            Spacer()
            
            MainButtonview(store: store.scope(state: \.continueButton, action: \.continueButton))
                .buttonStyle(PinkButtonStyle())
        }.containerRelativeFrame([.horizontal, .vertical])
            .background(Color.mainBackgroud)

    }
}

#Preview {
    OnboardingScreens(
        store: StoreOf<Onboarding>(
            initialState: Onboarding.State(myType: .third),
            reducer: { Onboarding() }
    )
    )
}

