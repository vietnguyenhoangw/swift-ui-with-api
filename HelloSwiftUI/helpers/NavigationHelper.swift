//
//  Navigator.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/27/22.
//

import Foundation
import SwiftUI

class NavigationHelper {
    enum screenKeys : String {
        case HOME_SCREEN
        case SETTING_SCREEN
    }
    
    @ViewBuilder
    open class func navigateToScreen(screenKey: String) -> some View {
        switch screenKey {
        case screenKeys.HOME_SCREEN.rawValue:
            HomeScreenView()
        default:
            EmptyView()
        }
    }
}
