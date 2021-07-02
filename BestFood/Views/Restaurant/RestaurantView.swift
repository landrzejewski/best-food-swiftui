import SwiftUI

struct RestaurantView: View {
    
    let viewModel: RestaurantViewModel
    
    var body: some View {
        VStack {
            LazyImageView(urlString: viewModel.imageUrl)
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 30, maxWidth: 300, minHeight: 30, maxHeight: 300)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(viewModel.name)
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(viewModel.stars)
                    .font(.body)
                    .foregroundColor(.yellow)
                Text(viewModel.prices)
                    .font(.body)
                    .foregroundColor(.green)
                    .lineLimit(1)
                
            }
        }
    }
    
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(viewModel: RestaurantViewModel(id: 1, name: "Tagarp Pizza", prices: "$$", rating: 3.2, imageUrl: "https://drive.google.com/uc?id=1AArfTdxBLjbZgCPKimekNpG61t5U2FD4"))
    }
}
