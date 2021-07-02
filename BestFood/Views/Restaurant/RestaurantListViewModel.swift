import Foundation
import Combine

final class RestaurantListViewModel: ObservableObject {
    
    private let restaurantService: RestaurantService
    private let settings: SettingsModel
    
    private var subscriptions = Set<AnyCancellable>()
    
    @Published var restaurants: [RestaurantViewModel] = []
    @Published var isLoading = false
    
    init(restaurantService: RestaurantService, settings: SettingsModel) {
        self.restaurantService = restaurantService
        self.settings = settings
        refresh()
    }
    
    func refresh() {
        isLoading = true
        restaurantService
            .getRestaurants(token: settings.token)
            .sink(receiveCompletion: onComplete) { [self] in
                print("mam", $0)
                restaurants = $0.map {
                    RestaurantViewModel(id: $0.id, name: $0.name, prices: $0.prices, rating: $0.rating, imageUrl: $0.imageUrl)
                }
            }
            .store(in: &subscriptions)
    }
    
    private func onComplete(_ completion: Subscribers.Completion<RequestError>) {
        isLoading = false
        if case .failure(let error) = completion {
            print(error)
        }
    }
    
}
