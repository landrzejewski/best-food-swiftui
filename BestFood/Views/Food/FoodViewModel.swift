import Foundation

struct FoodViewModel: Identifiable {

    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageUrl: String
    
    var priceText: String {
        return "\(price) zł"
    }
    
    var orderEntry: OrderEntryModel {
        OrderEntryModel(id: id, name: name, price: price)
    }
    
}
