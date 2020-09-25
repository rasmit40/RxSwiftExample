//
//  Restaurant.swift
//  RxSwiftExample
//
//  Created by R. Anderson Smith on 9/24/20.
//  Copyright © 2020 R. Anderson Smith. All rights reserved.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case plantbased
    case indian
    case experimental
    case mexican
    case burgers
    case diner
    case soulfood
}
