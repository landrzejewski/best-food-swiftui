//
//  LoginViewModel.swift
//  BestFood
//
//  Created by Piotr Górecki on 23/02/2021.
//

import Foundation
import Combine

final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false
    
    private var subscriptions = Set<AnyCancellable>()
    
    func confirm() {
        isLoading = true
        let authenticationService = AuthenticationService()
        let credentials = LoginCredentialsModel(email: email, password: password)
        
        authenticationService
            .login(credentials: credentials)
            .sink(receiveCompletion: { [self] completion in
                isLoading = false
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: { response in
                // TODO store a token and use it to authorize requests
                
                
            })
            .store(in: &subscriptions)
    }
    
}
