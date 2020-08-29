//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/27.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    return nums.reduce(0) { $0 ^ $1 }
}
