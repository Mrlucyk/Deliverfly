//
//  Navigation.swift
//  Deliverfly-SurenHakobyan
//
//  Created by user on 6/23/24.
//

import Foundation
import SwiftUI

class Navigation: ObservableObject {
    @Published var path = NavigationPath()
    
    enum View: Hashable {
        case resturant(info: Restaurant)
    }
    func goTO(view: View) {
        path.append(view)
    }
    func goBack() {
        path.removeLast()
    }
    }
