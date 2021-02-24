//
//  RestaurantService.swift
//  BestFood
//
//  Created by Piotr Górecki on 24/02/2021.
//

import Foundation
import Combine

struct HttpRestaurantService: RestaurantService {
 
    func getRestaurants(token: String) -> AnyPublisher<[RestaurantModel], RequestError> {
        URLSession.shared.request(for: "http://localhost:8000/restaurants", token: token)
    }
    
}
