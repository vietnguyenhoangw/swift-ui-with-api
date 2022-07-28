//
//  ContentViewController.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/27/22.
//

import Foundation
import UIKit
import SwiftUI

class ContentViewController: ObservableObject {
    var window: UIWindow?
    
    @Published var counter = 3
    @Published var isNextScreen: Bool = false
    @Published var screenKey = ""
    
    func runFirst() {
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            counter -= 1
            if (counter == 0) {
                self.screenKey = NavigationHelper.screenKeys.HOME_SCREEN.rawValue
                self.isNextScreen = true
            }
        }
    }
}
