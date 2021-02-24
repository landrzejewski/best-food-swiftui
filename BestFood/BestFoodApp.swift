//
//  BestFoodApp.swift
//  BestFood
//
//  Created by Łukasz Andrzejewski on 16/02/2021.
//

import SwiftUI

@main
struct BestFoodApp: App {

    @StateObject var settingsModel = SettingsModel()
    
    var body: some Scene {
        WindowGroup {
            if (settingsModel.isUserLogged) {
                BestFoodTabView()
                    .environmentObject(OrderService())
                    .environmentObject(settingsModel)
            } else {
                LoginView(viewModel: LoginViewModel(settingsModel: settingsModel))
            }
        }
    }
    
}
