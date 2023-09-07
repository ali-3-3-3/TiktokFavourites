//
//  ProductCardView.swift
//  TikTokFavourites
//
//  Created by Wari Wahab on 7/9/23.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    private var costFormatted: String {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 2 // Set the desired number of decimal places
            return formatter.string(from: NSNumber(value: product.cost)) ?? "$0.00"
        }

        private var discountFormatted: String {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 2 // Set the desired number of decimal places
            return formatter.string(from: NSNumber(value: product.discount)) ?? "$0.00"
        }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            
            Text(product.title)
                .font(.headline)
                .foregroundColor(.black)
            
            Text("$\(costFormatted)")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.red)
            
            HStack {
                Text("$\(discountFormatted) off")
                    .font(.system(size: 10))
                    .foregroundColor(.red)
                    .background(Color(.systemGray6))
                    .cornerRadius(4)
                
                Spacer()
                
                Text("\(product.unitsSold) sold")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4)
    }
}

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let cost: Double
    let discount: Double
    let unitsSold: Int
}

let products: [Product] = [
    Product(imageName: "product1", title: "Product 1", cost: 20.0, discount: 5.0, unitsSold: 100),
    Product(imageName: "product2", title: "Product 2", cost: 25.0, discount: 10.0, unitsSold: 200),
    Product(imageName: "product3", title: "Product 2", cost: 25.0, discount: 10.0, unitsSold: 200),
    Product(imageName: "product4", title: "Product 2", cost: 25.0, discount: 10.0, unitsSold: 200),
    Product(imageName: "product5", title: "Product 2", cost: 25.0, discount: 10.0, unitsSold: 200),
]

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: products[0])
    }
}
