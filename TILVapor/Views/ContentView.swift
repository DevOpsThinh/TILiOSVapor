//
//  ContentView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddSomeThings = false

    @StateObject private var someThings = SomeThingStore()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                if someThings.things.isEmpty {
                    Text("Add acronyms you learn")
                        .foregroundColor(.gray)
                }

                ForEach(someThings.things, id: \.self) { i in
                    Text(i)
                }
                Spacer()
            }
            .sheet(isPresented: $showAddSomeThings) {
                AddSomeThingView(someThings: someThings)
            }
            .navigationTitle("Things I Learned")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showAddSomeThings.toggle()
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.title)
                    }
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
