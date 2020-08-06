//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func longestValidParentheses(_ s: String) -> Int {
    /// store valid parentheses Key=start, Value=end index pair
    var dict = [Int: Int]()
    /// when encounter ')', pop stack, if exist index, then store index pair in dict
    /// when encounter '(', push index to stack
    var stack = [Int]()
    for (index, char) in s.enumerated() {
        
        if char == "(" {
            stack.append(index)
        } else {
            if let x = stack.popLast() {
                dict[x] = index
            }
        }
    }

    let n = s.count
    var i = 0
    /// max Current max parentheses count
    /// prev previous valid end index of  index pair
    /// prevMax previous valid parentheses max count
    var max = 0, prev = 0, prevMax=0
    while i < n {
        if let x = dict[i] {
            if i-1 == prev {
                max = Swift.max(max, x-i+1+prevMax)
                prevMax = x-i+1+prevMax
            } else {
                max = Swift.max(max, x-i+1)
                prevMax = x-i+1
            }
            prev = x
            
            
            i = x+1
        } else {
            i += 1
            prev = 0
            prevMax=0
            
        }
    }
    return max
}

/// the simple version
func longestValidParentheses1(_ s: String) -> Int {
    var max = 0
    var stack = [-1]
    for (index, char) in s.enumerated() {
        if char == "(" {
            stack.append(index)
        } else {
            _ = stack.popLast()
            if stack.isEmpty {
                stack.append(index)
            } else {
                max = Swift.max(max, index-stack.last!)
            }
        }
    }
    return max
}

