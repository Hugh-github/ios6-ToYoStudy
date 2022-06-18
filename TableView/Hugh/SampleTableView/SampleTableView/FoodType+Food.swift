//
//  FoodType+Food.swift
//  SampleTableView
//
//  Created by dhoney96 on 2022/06/18.
//

import Foundation

enum FoodType: String {
    case American = "American"
    case Chinese = "Chinese"
    case Korean = "Korean"
    case Japanese = "Japenese"
}

struct Food {
    let name: String
    var price: Int
}
