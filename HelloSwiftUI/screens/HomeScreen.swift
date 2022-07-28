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
            Text("Hello, world!")
                .padding()
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
