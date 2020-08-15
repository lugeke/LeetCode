//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func nextPermutation(_ nums: inout [Int]) {
    nums.permutate()
}

extension MutableCollection where Self: BidirectionalCollection, Element: Comparable {
    mutating func permutate() {
        // find the last index i where self[i] < self[i + 1]
        if let i = indices.dropLast().last(where: { self[$0] < self[index(after: $0)] }) {
            // find the last index j where self[j] > self[i]
            let j = self[index(after: i)...].indices.last(where: { self[$0] > self[i] })!
            swapAt(i, j)
            self[index(after: i)...].reverse()
        } else {
            reverse()
        }
    }
}
