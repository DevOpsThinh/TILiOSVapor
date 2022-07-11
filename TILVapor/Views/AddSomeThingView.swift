//
//  AddSomeThingView.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 11/07/2022.
//

import SwiftUI

struct AddSomeThingView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var thing = ""

    @Binding var someThings: SomeThingStore

    var body: some View {
        VStack {
            TextField("Thing I Learned", text: $thing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .disableAutocorrection(true)
            Button("Done") {
                if !thing.isEmpty {
                    someThings.things.append(thing)
                }
                dismiss()
            }
            Spacer()
        }
        .environment(\.textCase, nil)
    }
}

struct AddSomeThingView_Previews: PreviewProvider {
    static var previews: some View {
        AddSomeThingView(someThings: .constant(SomeThingStore()))
    }
}
