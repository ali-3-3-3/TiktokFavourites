//
//  HorizontalIcons.swift
//  TikTokFavourites
//

import SwiftUI


struct IconTextPairView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(iconTextPairs, id: \.self) { pair in
                    NavigationLink(destination: DetailView(pair: pair)) {
                        VStack {
                            Image(systemName: pair.iconName)
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            Text(pair.text)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct IconTextPair: Identifiable, Hashable {
    var id = UUID()
    var iconName: String
    var text: String
}

let iconTextPairs: [IconTextPair] = [
    IconTextPair(iconName: "list.clipboard", text: "Orders"),
    IconTextPair(iconName: "ticket", text: "Coupons"),
    IconTextPair(iconName: "message", text: "Messages"),
    IconTextPair(iconName: "bookmark", text: "Favourites"),
    IconTextPair(iconName: "clock.arrow.circlepath", text: "History"),
    IconTextPair(iconName: "mappin.and.ellipse", text: "Address"),
    IconTextPair(iconName: "dollarsign.circle", text: "Payment"),
    IconTextPair(iconName: "questionmark.circle", text: "Help")
]

struct DetailView: View {
    let pair: IconTextPair

    var body: some View {
        if (pair.text != "Favourites") {
            VStack {
                Text("Detail Page")
                    .font(.title)
                    .padding()
                
                Image(systemName: pair.iconName)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                Text(pair.text)
                    .font(.caption)
                    .multilineTextAlignment(.center)
                
                // Add more details or content here
            }
            .navigationBarTitle(pair.text, displayMode: .inline)
        } else {
            FavouritesPage()
        }
    }
}
