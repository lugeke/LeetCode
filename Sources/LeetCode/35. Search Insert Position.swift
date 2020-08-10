//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/9.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    let (i, left, _) = nums.binarySearch(target)
    if let i = i { return i}
    
    if left < nums.count && target > nums[left] {
        return left + 1
    } else {
        return left
    }
}
