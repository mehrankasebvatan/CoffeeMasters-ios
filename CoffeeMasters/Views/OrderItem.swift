//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 1/2/24.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager

    var item: (Product, Int)

    var body: some View {
        HStack {
            Text("\(item.1) x")
            Text("\(item.0.name)")
            Spacer()
            Text("$ \(item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .foregroundColor(.red)
                .font(.title2)
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
        .frame(width: .infinity)
    }
}

#Preview {
    OrderItem(item: (dummyProduct(), 1))
        .environmentObject(CartManager())
        .padding()
}
