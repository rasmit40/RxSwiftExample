//
//  RestaurantService.swift
//  RxSwiftExample
//
//  Created by R. Anderson Smith on 9/24/20.
//  Copyright © 2020 R. Anderson Smith. All rights reserved.
//

import Foundation
import RxSwift

protocol RestaurantServiceProtocol {
    func fetchRestaurants() -> Observable<[Restaurant]>
}

class RestaurantService: RestaurantServiceProtocol {
    func fetchRestaurants() -> Observable<[Restaurant]> {
        return Observable.create { observer -> Disposable in
            
            guard let path = Bundle.main.path(forResource: "restaurants", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create {  }
                
            }
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options:
                    .mappedIfSafe)
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(restaurants)
                
            } catch {
                observer.onError(error)
            }
            
            return Disposables.create { }
        }
    }
}
