//
//  HomePage.swift
//  TikTokFavourites
//


import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            VStack {
                Search_Bar()
                    .frame(height: 60)
                
                IconTextPairView()
                    .frame(height: 120);
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

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
