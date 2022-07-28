//
//  HomeController.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/28/22.
//

import Foundation

class HomeViewController: ObservableObject {
    @Published var userList: [User] = [];
    
    func fetchUserList() {
        UserSerivce().getUserList() { data in
            self.userList = data
        };
    }
}
