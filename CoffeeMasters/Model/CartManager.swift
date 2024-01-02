//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 1/2/24.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []

    func add(product: Product, quanity: Int) {
        var isUpdated = false
        for i in cart.indices {
            if cart[i].0.id == product.id {
                isUpdated = true
                cart[i] = (product, quanity + cart[i].1)
                break
            }
        }
        if isUpdated == false {
            cart.append((product, quanity))
        }
    }

    func remove(product: Product) {
        cart.removeAll { itemcart in
            itemcart.0.id == product.id
        }
    }

    func totalPrice() -> Double {
        var total = 0.0
        for items in cart {
            total += (items.0.price * Double(items.1))
        }
        return total
    }

    func clear() {
        for s in cart {
            remove(product: s.0)
        }
    }
}
