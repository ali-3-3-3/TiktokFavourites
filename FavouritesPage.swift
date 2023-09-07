//
//  FavouritesPage.swift
//  TikTokFavourites
//


import SwiftUI

struct FavouritesPage: View {
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                            // Handle button tap action here
                        }) {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                Text("Create new wishlist")
                                    .font(.headline)
                            }
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        }
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(products, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                    .padding()
                }
            }
        }
    }
}

struct FavouritesPage_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesPage()
    }
}
