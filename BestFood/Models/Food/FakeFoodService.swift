import Combine

struct FakeFoodService: FoodService {
    
    func getFood(token: String) -> AnyPublisher<[FoodModel], RequestError> {
        Just([
            FoodModel(id: 1, name: "Asparagus steak", description: "Nice and healthy steak.", price: 120.50, imageUrl: "https://github.com/landrzejewski/best-food-swiftui/blob/main/extras/images/asparagus-steak.png?raw=true"),
            FoodModel(id: 2, name: "Healthy pizza", description: "Mega pizza.", price: 90, imageUrl: "https://github.com/landrzejewski/best-food-swiftui/blob/main/extras/images/healthy-pizza.png?raw=true")
        ])
        .setFailureType(to: RequestError.self)
        .eraseToAnyPublisher()
    }
    
}
