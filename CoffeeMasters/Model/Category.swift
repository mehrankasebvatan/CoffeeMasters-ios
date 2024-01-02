//
//  Category.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 1/2/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String{
        return self.name
    }
}
