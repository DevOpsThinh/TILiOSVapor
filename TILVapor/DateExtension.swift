//
//  DateExtension.swift
//  TILVapor
//
//  Created by Nguyễn Trường Thịnh on 16/07/2022.
//

import Foundation

extension Date {
    /// Format a date using the specified format.
    /// - parameters:
    ///     - format: A date pattern string like "d MMM"
    func formatted(as format: String) -> String {
        let dFormatter = DateFormatter()
        dFormatter.dateFormat = format
        return dFormatter.string(from: self)
    }
}
