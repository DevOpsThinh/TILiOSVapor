//
//  SomeThingStore.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 11/07/2022.
//

import Foundation

final class SomeThingStore: ObservableObject {
    @Published var things: [String] = []
}
