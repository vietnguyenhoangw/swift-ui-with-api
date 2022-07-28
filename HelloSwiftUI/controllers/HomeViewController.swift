//
//  HomeController.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/28/22.
//

import Foundation

class HomeViewController: ObservableObject {
    @Published var userList: [User] = [];
    @Published var loadingCenter: Bool = false;
    
    func fetchUserList() {
        self.loadingCenter = true;
        UserSerivce().getUserList() { data in
            DispatchQueue.main.async {
                self.userList = data
                self.loadingCenter = false
            }
        };
        
    }
}
