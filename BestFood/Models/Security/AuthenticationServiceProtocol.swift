import Foundation
import Combine

protocol AuthenticationServiceProtocol {
    func login(credentials: LoginCredentialsModel) -> AnyPublisher<SessionTokenModel, RequestError>
}
