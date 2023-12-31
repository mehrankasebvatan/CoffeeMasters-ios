//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 12/31/23.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) { _ in
                    NavigationLink{
                        DetailsPage()
                    } label: {
                        Product()
                    }
                    
                }

            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
