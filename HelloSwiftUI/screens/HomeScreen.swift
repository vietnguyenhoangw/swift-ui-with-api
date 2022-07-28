//
//  File.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/27/22.
//
import SwiftUI

struct HomeScreenView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var homeViewController: HomeViewController = HomeViewController()
    
    var body: some View {
        VStack {
            List(self.homeViewController.userList, id:\.id) { user in
                HStack {
                    AsyncImage(url: URL(string: user.avatar), scale: 2.5)
                        .border(Color.gray, width: 1.0)
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Spacer().frame(width: 24)
                    VStack(alignment: .leading, spacing: 6) {
                        Text("\(user.name)").fontWeight(.bold)
                        Text("\(user.createdAt)").font(.system(size: 10))
                    }
                }.padding(20)
            }
        }.onAppear {
            homeViewController.fetchUserList()
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .navigationBarItems(leading: Button("Back"){ dismiss() })
        
    }
}

//struct HomeScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreenView()
//    }
//}
