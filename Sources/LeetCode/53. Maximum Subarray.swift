//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/23.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else {
        return 0
    }
    // maxs[i] j...i max subarray
    var maxs = nums
    for i in 1..<nums.count {
        if maxs[i-1] > 0 {
            maxs[i] += maxs[i-1]
        }
    }
    
    return maxs.max()!
    
}
