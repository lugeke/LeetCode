//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/6.
//

import Foundation

extension RandomAccessCollection where Element: Comparable {
    func binarySearch(_ n: Element) -> Index? {
        var left = startIndex, right = index(before: endIndex)
        while left <= right {
            let middle = index(left, offsetBy: distance(from: left, to: right)/2)
            if self[middle] == n { return middle }
            else if self[middle] < n {
                left = index(after: middle)
            } else {
                right = index(before: middle)
            }
        }
        return nil
    }
}

func threeSum(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()
    var result = [[Int]]()
    for i in nums.indices {
        if nums[i] > 0  { break }
        if i > 0 && nums[i] == nums[i-1] { continue }
        for j in stride(from: nums.count-1, through: 0, by: -1) {
            if nums[j] < 0 { break }
            if j < nums.count-1 && nums[j] == nums[j+1] { continue }
            let n = -(nums[i] + nums[j])
            if n > nums[j] {break}
            if n < nums[i] { continue }
            if i+1<=j, let k = nums[i+1..<j].binarySearch(n) {
                result.append([nums[i], nums[k], nums[j]])
            }
        }
    }
    
    return result
}


func threeSum1(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else { return [] }
    let sorted = nums.sorted()
    var result = [[Int]]()
    for i in sorted.indices {
        // Don't allow `i` to point to same element
        if i != 0, sorted[i] == sorted[i-1] { continue }
        var j = i + 1
        var k = sorted.count-1
        while j < k {
            let sum = sorted[i] + sorted[j] + sorted[k]
            if sum == 0 {
                result.append([sorted[i], sorted[j], sorted[k]])
                j += 1
                // Don't allow `j` to point to same element
                while j < k, sorted[j] == sorted[j-1] { j += 1 }
            } else if sum < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return result
}
