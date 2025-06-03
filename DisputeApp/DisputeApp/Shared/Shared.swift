//
//  Shared.swift
//  DisputeApp
//
//  Created by Kazimir Kozulia on 26.05.2025.
//
import SwiftUI
import ComposableArchitecture

extension SharedKey where Self == AppStorageKey<Bool> {
    static var isOnboardingPassed: Self {
        appStorage("isOnboardingPassed")
    }
}
