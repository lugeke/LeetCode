//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    nums.reverse()
    nums[..<k].reverse()
    nums[k...].reverse()
}

