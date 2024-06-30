//
//  HomeView.swift
//  Deliverfly-SurenHakobyan
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var navigation: Navigation
    let list: [Restaurant] = .restaurants
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading ){
                HStack{
                    historyButton
                    deliveryAddress
                    Spacer()
                }
                resturants
                restaurantsLists
            }
        }
        .padding(.horizontal)
        .scrollIndicators(.hidden)
    }
    
    var historyButton: some View {
        Button(action: {
            //action - go to History
        } , label: {
            Image(.history)
                .padding()
                .background(.lightGray)
                .clipShape(Circle())
        } )
    }
    
    var deliveryAddress: some View {
        VStack(alignment:  .leading){
            Text("Deliver to")
                .font(.caption)
                .bold()
                .foregroundStyle(.darkOrange)
                Text("16 Halabyan Yerevan 0038")
                .font(.footnote)
                .foregroundStyle(.darkGray)

                }
    }
    var resturants: some View {
        Text("Resturants")
            .font(.title3)
            .padding(.vertical)
    }
    
    var restaurantsLists: some View{
        VStack {
            ForEach(list, id: \.self) { restaurant in
                Button(action: {
                    navigation.goTO(view: .resturant(info: restaurant))
                }, label: {
                    RestoranProview(restaurant: restaurant)
                })
            }
        }
    }
}
#Preview {
    HomeView()
}
