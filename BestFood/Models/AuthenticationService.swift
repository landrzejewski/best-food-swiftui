//
//  AuthenticationService.swift
//  BestFood
//
//  Created by Piotr Górecki on 23/02/2021.
//

import Foundation
import Combine

struct AuthenticationService: AuthenticationServiceProtocol {
    
    let endpoint = "http://localhost:8000/auth/login"
    
    func login(credentials: LoginCredentialsModel) -> AnyPublisher<SessionTokenModel, RequestError> {
        let publisher: AnyPublisher<SessionTokenModel, RequestError> = URLSession.shared.request(
            for: endpoint,
            payload: credentials)
        
        return publisher
    }
    
}
