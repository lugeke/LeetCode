//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/15.
//

import Foundation

func permute(_ nums: [Int]) -> [[Int]] {
    var nums = nums
    var result = [[Int]]()
    
    func permute(from index: Int) {
        if index == nums.count {
            result.append(nums)
        }
        for i in index..<nums.count {
            nums.swapAt(i, index)
            permute(from: index+1)
            nums.swapAt(i, index)
        }
    }
    
    permute(from: 0)
    return result
}
