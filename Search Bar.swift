//
//  Search Bar.swift
//  TikTokFavourites
//


import SwiftUI


struct Search_Bar: View {
    @State private var searchText = ""

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                Text("Try searching for something!")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 13)
            .background(Color.white)
            .cornerRadius(8)

            Spacer()

            Button(action: {
                // Handle search button action
            }) {
                Text("Search")
                    .foregroundColor(.red)
                    .padding(7)
                    .background(Color.white)
                    .cornerRadius(8)
            }
            
            Button(action: {
                // Handle search button action
            }) {
                Image(systemName: "cart")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
            }
        }
        .padding(16)
        .background(Color.gray.opacity(0.1))
    }
}

struct Search_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Search_Bar()
    }
}
