//
//  RestaurantServiceProtocol.swift
//  BestFood
//
//  Created by Piotr Górecki on 24/02/2021.
//

import Combine

protocol RestaurantService {
    
    func getRestaurants(token: String) -> AnyPublisher<[RestaurantModel], RequestError>
    
}
