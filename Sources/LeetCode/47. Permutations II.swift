//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/17.
//

import Foundation

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var nums = nums.sorted()
    var result = [[Int]]()
    
    func permute(from index: Int) {
        if index == nums.count {
            result.append(nums)
        }
        
        var used = Set<Int>()
        for i in index..<nums.count {
            if used.contains(nums[i]) { continue}
            nums.swapAt(i, index)
            permute(from: index+1)
            nums.swapAt(i, index)
            used.insert(nums[i])
        }
    }
    
    permute(from: 0)
    return result
}


func permuteUnique1(_ nums: [Int]) -> [[Int]] {
    var nums = nums.sorted()
    var result = [[Int]]()
    result.append(nums)
    while true {
        if let i = nums.indices.dropLast().last(where: { nums[$0] < nums[nums.index(after: $0)] }) {
            // find the last index j where self[j] > self[i]
            let j = nums[nums.index(after: i)...].indices.last(where: { nums[$0] > nums[i] })!
            nums.swapAt(i, j)
            nums[nums.index(after: i)...].reverse()
            result.append(nums)
        } else {
            break
        }
    }
   
    return result
}

