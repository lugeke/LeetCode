//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation

extension BidirectionalCollection {//where Element: Equatable {
    ///- Complexity: O(*n*) , where *n* is the number of elements in `Self`
    func isSymmetric(by isEqual: (Element, Element) throws -> Bool) rethrows -> Bool {
        guard !isEmpty else {
            return true
        }
        var i = startIndex, j = index(before: endIndex)
        while i < j {
            if try !isEqual(self[i], self[j]) { return false }
            formIndex(after: &i)
            formIndex(before: &j)
        }
        return true
    }
}

extension BidirectionalCollection where Element: Equatable {
    ///- Complexity: O(*n*) , where *n* is the number of elements in `Self`
    var isSymmetric: Bool {
        return isSymmetric(by: ==)
    }
}
