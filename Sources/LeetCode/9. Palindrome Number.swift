//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    var reversed = 0
    var xx = x
    while xx != 0 {
        let pop = xx%10
        // overflow
        // Int.max 9223372036854775807
        if reversed > Int.max / 10 || (reversed == Int.max / 10 && pop > 7) {
            return false
        }
        reversed = reversed * 10 + pop
        xx /= 10
    }
    return x == reversed
}
