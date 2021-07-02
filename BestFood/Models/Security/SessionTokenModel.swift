import Foundation

struct SessionTokenModel: Decodable {
    let token: String
    
    enum CodingKeys: String, CodingKey {
        case token = "access_token"
    }
}
