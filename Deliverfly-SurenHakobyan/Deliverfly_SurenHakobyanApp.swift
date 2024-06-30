//
//  Deliverfly_SurenHakobyanApp.swift
//  Deliverfly-SurenHakobyan
//
//  Created by user on 6/16/24.
//

import SwiftUI

@main
struct Deliverfly_SurenHakobyanApp: App {
    @ObservedObject private var navigation = Navigation()
    @State private var isSplash = true
    
    
    var body: some Scene {
        WindowGroup {
            if isSplash {
                SplashView()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1.5){
                            isSplash = false
                        }
                    }
            }else{
                NavigationStack(path: $navigation.path) {
                    HomeView()
                        .navigationBarBackButtonHidden()
                        .navigationDestination(for: Navigation.View.self) { view 
                            in
                            switch view {
                            case .resturant(let info):
                                RestaurantView(restaurant: info)
                                    .navigationBarBackButtonHidden()
                            }
                        }
                }
                .environmentObject(navigation)
            }
            
        }
    }
}
