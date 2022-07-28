//
//  UserService.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/28/22.
//

import Foundation

struct User: Decodable {
    let createdAt: String
    let name: String
    let avatar: String
    let id: String
}

class UserSerivce {
    func getUserList(completion: @escaping([User]) -> ()) {
        guard let url = URL(string: "https://5d905d2fb9f5430014c26fc8.mockapi.io/users") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            if let data = data {
                do {
                    let userList = try JSONDecoder().decode([User].self, from: data)
                    completion(userList)
                } catch let decoderError {
                    completion([])
                    print(decoderError)
                }
            }
        }
        task.resume()
    }
    
}
