//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Mehran Kasebvatan on 12/31/23.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""

    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
                    .font(.body)
            }
        }
    }
}

#Preview {
    Offer(title: "My Offer",
          description: "this is first offer")
}
