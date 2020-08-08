//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func nextPermutation(_ nums: inout [Int]) {
    
    // find the last index i where nums[i] < nums[i + 1]
    if let i = (0..<nums.count-1).lastIndex(where: { nums[$0] < nums[$0+1] }) {
        // find the last index j where nums[j] > nums[i]
        let j = (i+1..<nums.count).lastIndex(where: { nums[$0] > nums[i] })!
        nums.swapAt(i, j)
        nums[(i+1)...].reverse()
    } else {
        nums.reverse()
    }
}
