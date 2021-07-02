import Combine

protocol FoodService {
    
    func getFood(token: String) -> AnyPublisher<[FoodModel], RequestError>
    
}
