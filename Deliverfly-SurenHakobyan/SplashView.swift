//
//  SplashView.swift
//  Deliverfly-SurenHakobyan
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct SplashView: View {
    @State private var animationValue = 0.5
    var body: some View {
        VStack{

            Image(.logo)
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
                .padding()
                .scaleEffect(animationValue)
            Text("Deliverfly")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(.darkOrange,ignoresSafeAreaEdges:
                .all)
        .animation(.easeInOut(duration: 1.5), value:animationValue)
        .onAppear {
            animationValue = 1.0
        }
    }
        
}

#Preview {
    SplashView()
}

