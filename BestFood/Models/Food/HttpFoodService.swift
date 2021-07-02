import Foundation
import Combine

struct HttpFoodService: FoodService {
 
    func getFood(token: String) -> AnyPublisher<[FoodModel], RequestError> {
        URLSession.shared.request(for: "http://localhost:8000/food", token: token)
    }
    
}
