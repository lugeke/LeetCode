//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var hasSeen = Set<Int>()
    for num in nums {
        guard hasSeen.insert(num).inserted else {
            return true
        }
    }
    return false
}
