//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/3.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty { return 0 }
    if nums.count == 1 { return nums[0] }

    var result = nums
    result[1] = max(result[0], result[1])
    
    for i in 2..<nums.count {
        result[i] = max(result[i] + result[i-2], result[i-1])
    }
    return result.last!
}


