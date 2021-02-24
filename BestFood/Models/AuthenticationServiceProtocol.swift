//
//  AuthenticationServiceProtocol.swift
//  BestFood
//
//  Created by Piotr Górecki on 24/02/2021.
//

import Foundation
import Combine

protocol AuthenticationServiceProtocol {
    func login(credentials: LoginCredentialsModel) -> AnyPublisher<SessionTokenModel, RequestError>
}
