//
//  HomeController.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/28/22.
//

import Foundation

class HomeViewController: ObservableObject {
    func fetchUserList() {
        UserSerivce().getUserList() { data in  // <--- here
            print(">>>>>>>> \(data)") // print when all work is done
        };
    }
}
