//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/9.
//

import Foundation

func searchRange1(_ nums: [Int], _ target: Int) -> [Int] {

    guard case let i = nums.binarySearch(target), i.middle != nil else { return [-1, -1]}
    var start = i, end = i
    
    // search right half sub array
    while case let j = nums[end.middle!+1..<end.right+1].binarySearch(target), j.middle != nil {
        end = j
    }
    // search left half sub array
    while case let j = nums[start.left..<start.middle!].binarySearch(target), j.middle != nil  {
        start = j
    }
    
    return [start.middle!, end.middle!]
}

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {

    guard case (let i?, var left, var right) = nums.binarySearch(target) else { return [-1, -1]}
    var start = i, end = i
    // search right half sub array
    while case let (middle?, _, upper) = nums[end+1..<right+1].binarySearch(target) {
        end = middle
        right = upper
    }
    // search left half sub array
    while case let (middle?, lower, _) = nums[left..<start].binarySearch(target) {
        start = middle
        left = lower
    }
    
    return [start, end]
}
