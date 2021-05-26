//
//  SessionModel.swift
//  BestFood
//
//  Created by Piotr Górecki on 23/02/2021.
//

import Foundation
import Combine

final class SettingsModel: ObservableObject {
    
    @Published var isUserLogged = false // TODO Naive
    @Published var token = ""
    
    func setToken(_ token: String) {
        self.token = token
        isUserLogged = true
    }
    
}
