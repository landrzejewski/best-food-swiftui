import Combine

protocol RestaurantService {
    
    func getRestaurants(token: String) -> AnyPublisher<[RestaurantModel], RequestError>
    
}
