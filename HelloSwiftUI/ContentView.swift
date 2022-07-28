//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by vietnguyenw on 7/27/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentViewController: ContentViewController = ContentViewController()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("HELLO SWFIT UI")
                    .font(.title).fontWeight(.bold)
                ProgressView()
                NavigationLink(destination: NavigationHelper.navigateToScreen(screenKey: self.contentViewController.screenKey), isActive: $contentViewController.isNextScreen) { EmptyView() }
            }.onAppear {
                self.contentViewController.runFirst()
            }.navigationBarHidden(true)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
