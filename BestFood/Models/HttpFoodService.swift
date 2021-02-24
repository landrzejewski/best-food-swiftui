//
//  HttpFoodService.swift
//  BestFood
//
//  Created by Łukasz Andrzejewski on 16/02/2021.
//

import Foundation
import Combine

struct HttpFoodService: FoodService {
 
    func getFood(token: String) -> AnyPublisher<[FoodModel], RequestError> {
//        URLSession.shared.request(for: "https://raw.githubusercontent.com/landrzejewski/best-food-swiftui/main/extras/data.json")
        URLSession.shared.request(for: "http://localhost:8000/food", token: token)
    }
    
}
