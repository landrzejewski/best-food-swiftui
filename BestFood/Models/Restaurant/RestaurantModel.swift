//
//  RestaurantModel.swift
//  BestFood
//
//  Created by Piotr Górecki on 24/02/2021.
//

struct RestaurantModel: Decodable {
    
    let id: Int
    let name: String
    let prices: String
    let rating: Double
    let imageUrl: String
    
}
