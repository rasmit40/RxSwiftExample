//
//  RestaurantsListViewModel.swift
//  RxSwiftExample
//
//  Created by R. Anderson Smith on 9/24/20.
//  Copyright © 2020 R. Anderson Smith. All rights reserved.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { $0.map { RestaurantViewModel(restaurant: $0) } }
    }
}
