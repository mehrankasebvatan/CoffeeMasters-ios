//
//  Product.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 12/31/23.
//

import SwiftUI

struct Product: View {
    var body: some View {
        VStack {
            Image("BlackCoffee")
                .frame(maxWidth: 300, maxHeight: 150)
                .background(Color("AccentColor"))
                .clipped()
                .cornerRadius(5)
                .padding()
            HStack {
                VStack(alignment: .leading) {
                    Text("Product Name")
                        .font(.title3)
                        .bold()
                    Text("$ 4.25")
                        .font(.caption)

                }.padding(8)
                Spacer()
                Image(systemName: "heart")
                    .padding()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    Product()
}
