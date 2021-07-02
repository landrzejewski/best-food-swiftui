import Foundation
import Combine

struct FakeRestaurantService: RestaurantService {
    
    func getRestaurants(token: String) -> AnyPublisher<[RestaurantModel], RequestError> {
        Just([
                RestaurantModel(
                    id: 1,
                    name: "Tågarps pizzaria",
                    prices: "$",
                    rating: 2.1,
                    imageUrl: "https://drive.google.com/uc?id=15gh7rKzr0LxHN5RvEfq_V5zTsbT7eaf2"
                ),
                RestaurantModel(
                    id: 2,
                    name: "Miss Alice Krog & Butik",
                    prices: "$$$",
                    rating: 3.6,
                    imageUrl: "https://drive.google.com/uc?id=1yC5yHPwCkXvVeHOH5_PT4ttgCBJDGImc"
                ),
                RestaurantModel(
                    id: 3,
                    name: "PizzaHut",
                    prices: "$$$",
                    rating: 1.6,
                    imageUrl: "https://drive.google.com/uc?id=1kl-iPNhSWnDU1EDi14Z5H86OkmyEsomS"
                ),
                RestaurantModel(
                    id: 4,
                    name: "Americano",
                    prices: "$$",
                    rating: 4.6,
                    imageUrl: "https://drive.google.com/uc?id=166kYVqPaGFEp8ogm41YWMCHjSnLL3GtH"
                )])
            .setFailureType(to: RequestError.self)
            .eraseToAnyPublisher()
    }
    
}
