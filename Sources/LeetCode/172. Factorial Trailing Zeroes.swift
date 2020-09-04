//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/31.
//

import Foundation

// the number of zeros equal to the number of 5 in prime factorization
func trailingZeroes(_ n: Int) -> Int {
    var result = 0
    var i = 5
    while n/i != 0 {
        result += n/i
        i *= 5
    }
    return result
}
