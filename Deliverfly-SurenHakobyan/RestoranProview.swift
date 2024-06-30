//
//  RestoranProview.swift
//  Deliverfly-SurenHakobyan
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct RestoranProview: View {
    let restaurant: Restaurant
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            hederImage
            restoranName
            restoranItems
            details
        }
    }
    
    var hederImage: some View{
        Image(restaurant.image)
            .resizable()
            .scaledToFill()
            .frame(height: 140)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    var restoranName: some View{
        Text(restaurant.name)
            .font(.title2)
            .foregroundStyle(.darkBlue)
    }
    
    var restoranItems: some View {
        Text(restaurant.foods.map {$0.name}.joined(separator: "-"))
            .font(.subheadline)
            .foregroundStyle(.gray)
            .lineLimit(1)
    }
    
    
    var details: some View {
        HStack {
            Image(.star)
                .renderingMode(.template)
                .foregroundStyle(.darkOrange)
            Text(String(5.0))
                .bold()
                .foregroundStyle(.darkBlue)
            Image(.truck)
                .renderingMode(.template)
                .foregroundStyle(.darkOrange)
                .padding(.leading)
            Text("Free")
                .fontWeight(.bold)
                .foregroundStyle(.darkBlue)
            Image(.clock)
                .renderingMode(.template)
                .foregroundStyle(.darkOrange)
                .padding(.leading)
            Text("\(restaurant.time) min")
                .fontWeight(.bold)
                .foregroundStyle(.darkBlue)
        }
        .padding(.vertical)
    }
}


#Preview {
    RestoranProview(restaurant: .inNOut)
}
