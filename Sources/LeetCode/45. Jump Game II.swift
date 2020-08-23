//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/23.
//

import Foundation

func jump1(_ nums: [Int]) -> Int {
    if nums.count <= 1 {
        return 0
    }
    
    var jumps = 0
    var canReach = 0
    var interval = (0,0)
    while true {
        jumps += 1
        for i in interval.0...interval.1 {
            canReach = max(canReach, nums[i] + i)
        }
        
        if canReach >= nums.count - 1 {
            return jumps
        }
        
        interval.0 = interval.1 + 1
        interval.1 = canReach
    }
    
    return jumps
}

func jump(_ nums: [Int]) -> Int {
    
    guard nums.count > 1 else {
        return 0
    }
    var maxs = [Int](repeating: .max, count: nums.count)
    maxs[0] = 0
    var maxJump = 0
    for i in 0..<nums.count-1 {
        if i + nums[i] >= nums.count-1 {
            return maxs[i] + 1
        }
        if maxJump >= nums[i] + i { continue }
        for j in maxJump+1..<nums[i]+i+1 {
            maxs[j] = maxs[i]+1
        }
        maxJump = nums[i] + i
    }
    
    return maxs.last!
    
}
