import Foundation

struct RestaurantViewModel: Identifiable {

    let id: Int
    let name: String
    let prices: String
    let rating: Double
    let imageUrl: String
    
    var stars: String {
        return "\(String(repeating: "★", count: Int(rating)))\(String(repeating: "☆", count: 5 - Int(rating)))"
    }
    
//    var orderEntry: OrderEntryModel {
//        OrderEntryModel(id: id, name: name, price: price, rating: rating) // huehue
//    }
    
}
