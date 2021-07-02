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
