//
//  ContentView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 11/07/2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            TerminologiesView()
                .badge(10)
                .tabItem {
                    Image(systemName: "character.book.closed.fill")
                    Text("Terms")
                }
            UsersView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Users")
                }
            CategoriesView()
                .tabItem {
                    Image(systemName: "tag.fill")
                    Text("Categories")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
