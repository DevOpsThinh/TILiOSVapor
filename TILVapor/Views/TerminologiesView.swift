//
//  TerminolgiesView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 16/07/2022.
//

import SwiftUI

struct TerminologiesView: View {
    @State private var showAddSomeThings = false

    @StateObject private var someThings = SomeThingStore()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                if someThings.things.isEmpty {
                    Text("Add terminologies you learn")
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
            .navigationTitle("Encyclopedia")
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


struct TerminolgiesView_Previews: PreviewProvider {
    static var previews: some View {
        TerminologiesView()
    }
}
