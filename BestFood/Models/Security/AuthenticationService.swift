import Foundation
import Combine

struct AuthenticationService: AuthenticationServiceProtocol {
    
    let endpoint = "http://localhost:8000/auth"
    
    func login(credentials: LoginCredentialsModel) -> AnyPublisher<SessionTokenModel, RequestError> {
//        let publisher: AnyPublisher<SessionTokenModel, RequestError> = URLSession.shared.request(
//            for: endpoint,
//            payload: credentials)
        
        return URLSession.shared.request(for: endpoint)
    }
    
}
