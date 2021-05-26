//
//  SessionTokenModel.swift
//  BestFood
//
//  Created by Piotr Górecki on 23/02/2021.
//

import Foundation

struct SessionTokenModel: Decodable {
    let token: String
    
    enum CodingKeys: String, CodingKey {
        case token = "access_token"
    }
}
