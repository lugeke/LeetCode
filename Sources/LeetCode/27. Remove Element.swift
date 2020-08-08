//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard !nums.isEmpty else {
        return 0
    }
    
    // invariant
    // nums[0..<count] elements not equal val
    var count = 0
    
    for i in 0..<nums.count {
        if nums[i] != val {
            nums[count] = nums[i]
            count += 1
        }
    }
    
    return count
}
