//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation
func search(_ nums: [Int], _ target: Int) -> Int {
    func binarySearch(_ ary: ArraySlice<Int>) -> Int? {
        
        guard !ary.isEmpty else {
            return nil
        }
        let left = ary.startIndex, right = ary.index(before: ary.endIndex)
        let middle = left + (right - left)/2
        if ary[middle] == target {
            return middle
        } else if ary[middle] < target {
            if ary[middle] > ary[right] {
                return binarySearch(ary.suffix(from: middle+1))
            } else {
                return binarySearch(ary.prefix(upTo: middle)) ?? binarySearch(ary.suffix(from: middle+1))
            }
        } else {
            if ary[middle] > ary[right] {
                return binarySearch(ary.prefix(upTo: middle)) ?? binarySearch(ary.suffix(from: middle+1))
            } else {
                return binarySearch(ary.prefix(upTo: middle))
            }
        }
        
    }
    
    return binarySearch(nums[...]) ?? -1
}


func search1(_ nums: [Int], _ target: Int) -> Int {
    guard !nums.isEmpty else {
        return -1
    }
    var low = 0, high = nums.count - 1
    while low <= high {
        let middle = low + (high - low) / 2
        if target == nums[middle] { return middle }
        
        // Left half of the array is sorted
        if nums[low] <= nums[middle] {
            if target < nums[low] || target > nums[middle] {
                low = middle + 1
            } else {
                high = middle - 1
            }
        } else { // Right half of the array is sorted
            if target < nums[middle] || target > nums[high]{
                high = middle - 1
            }
            else {
                low = middle + 1
            }
        }
    }
    return -1
}
