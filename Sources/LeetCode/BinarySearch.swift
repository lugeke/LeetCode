//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/9.
//

extension RandomAccessCollection where Element: Comparable {
    
    func binarySearch(_ n: Element) -> (middle: Index?, left: Index, right: Index) {
        var left = startIndex, right = index(before: endIndex)
        while left <= right {
            let middle = index(left, offsetBy: distance(from: left, to: right)/2)
            if self[middle] == n { return (middle, left, right) }
            else if self[middle] < n {
                left = index(after: middle)
            } else {
                right = index(before: middle)
            }
        }
        return (nil, left, right)
    }
    
}
