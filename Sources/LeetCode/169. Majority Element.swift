//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/30.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    let nums = nums.sorted()
    return nums[nums.count/2]
}

// Boyer-Moore Voting Algorithm
func majorityElement1(_ nums: [Int]) -> Int {
    var count = 1
    var candidate = nums[0]
    
    for num in nums[1...] {
        if count == 0 {
            candidate = num
        }
        count += num == candidate ? 1 : -1
    }
    
    return candidate
}
