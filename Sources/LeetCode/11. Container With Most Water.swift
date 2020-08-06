//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/5.
//


func maxArea(_ height: [Int]) -> Int {
    var start = 0, end = height.count-1
    var result = 0
    while start < end {
        let area = min(height[start], height[end]) * (end-start)
        result = max(result, area)
        if height[start] <= height[end] { start += 1}
        else { end -= 1}
    }
    return result
}
