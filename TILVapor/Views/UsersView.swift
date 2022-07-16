//
//  UsersView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 16/07/2022.
//

import SwiftUI

struct UsersView: View {
    let users = ["devopsthinh", "adam_eva", "anonymous"]

    var body: some View {
        VStack {
            Text("Users")
                .font(.title)
                .padding()
            Form {
                Section{
                    ForEach(users, id: \.self) { i in
                        Text(i)
                            .font(.subheadline)
                            .padding()
                    }
                }
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
