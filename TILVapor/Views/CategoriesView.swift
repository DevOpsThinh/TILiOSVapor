//
//  CategoriesView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 16/07/2022.
//

import SwiftUI

struct CategoriesView: View {
    let today = Date()
    let categories = ["Programming", "Android", "iOS", "IDE", "Computer Science"]

    var body: some View {
        VStack {
            Text("Categories")
                .font(.title)
                .padding()
            Form {
                Section(
                    header:
                    Text(today.formatted(as: "d MMM"))
                        .font(.headline)) {
                            ForEach(categories, id: \.self) { i in
                                Text(i)
                            }
                        }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
