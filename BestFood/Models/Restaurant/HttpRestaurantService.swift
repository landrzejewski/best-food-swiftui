import Foundation
import Combine

struct HttpRestaurantService: RestaurantService {
 
    func getRestaurants(token: String) -> AnyPublisher<[RestaurantModel], RequestError> {
        URLSession.shared.request(for: "http://localhost:8000/restaurants", token: token)
    }
    
}
