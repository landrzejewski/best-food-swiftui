import Foundation
import Combine

final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false
    
    private var subscriptions = Set<AnyCancellable>()
    private var settingsModel: SettingsModel
    
    init(settingsModel: SettingsModel) {
        self.settingsModel = settingsModel
    }
    
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
            }, receiveValue: { [self] response in
                // TODO NAIVE
                settingsModel.setToken(response.token)
            })
            .store(in: &subscriptions)
    }
    
}
