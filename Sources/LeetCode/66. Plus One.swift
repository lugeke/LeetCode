//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/24.
//

import Foundation

// 1 <= digits.count <= 100
// 0 <= digits[i] <= 9
func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    var carry = 1
    for i in (0..<digits.count).reversed() {
        (carry, result[i]) = (result[i] + carry).quotientAndRemainder(dividingBy: 10)
    }
    if carry == 1 {
        result.insert(1, at: 0)
    }
    
    return result
}
