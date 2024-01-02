//
//  Product.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 12/31/23.
//

import SwiftUI

struct ProductItem: View {
    var product: Product

    var body: some View {
        VStack {
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
                .clipped()
                .cornerRadius(5)
                .padding()
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)

                }.padding(8)
                Spacer()
                Image(systemName: "heart")
                    .padding()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
    }
}

#Preview {
    ProductItem(product: Product(id: 1, name: "Preview Name", description: "Preview Description", price: 4.25, image: ""))
}

func dummyProduct() -> Product {
    return Product(id: 1, name: "Preview Name", description: "Preview Description", price: 4.25, image: "")
}
