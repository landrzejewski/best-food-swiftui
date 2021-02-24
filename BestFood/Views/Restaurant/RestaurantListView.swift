//
//  RestaurantListView.swift
//  BestFood
//
//  Created by Piotr Górecki on 24/02/2021.
//

import SwiftUI

struct RestaurantListView: View {
    
    @ObservedObject var viewModel: RestaurantListViewModel
    
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 16),
        GridItem(.adaptive(minimum: 100), spacing: 16),
    ]
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 20, pinnedViews: []) {
                    ForEach(viewModel.restaurants) { restaurantModel in
                        RestaurantView(viewModel: restaurantModel)
                    }
                }
            }
            .padding()
            .navigationTitle("Restaurants")
            if viewModel.isLoading {
                LoadingView()
            }
        }
        
    }
    
    
}


struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView(viewModel: RestaurantListViewModel(restaurantService: FakeRestaurantService(), settings: SettingsModel()))
    }
}
