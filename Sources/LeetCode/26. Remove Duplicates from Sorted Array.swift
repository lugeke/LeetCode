//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else {
        return 0
    }
    
    // invariant
    // nums[0..<count] unique elements
    var count = 1
    
    for i in 1..<nums.count {
        if nums[i] != nums[i-1] {
            nums[count] = nums[i]
            count += 1
        }
    }
    
    return count
}
