//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func longestPalindrome(_ s: String) -> String {
    if s.isEmpty { return "" }

    var maxRange = 0...0

    let s = Array(s)
    for i in s.indices {
        let t1 = expandAroundCenter(s, left: i-1, right: i+1)
        let t2 = expandAroundCenter(s, left: i, right: i+1)
        let t = t1.count > t2.count ? t1 : t2
        
        if (t.count-2 > maxRange.count) {
            maxRange = t.lowerBound+1...t.upperBound-1
        }
    }
    return String(s[maxRange])
}


/// - Invariant: left+1...right-1 is palindrome
private func expandAroundCenter(_ s: Array<Character>, left: Int, right: Int) -> ClosedRange<Int> {
    var l = left, r = right

    while l >= 0 && r < s.count && s[l] == s[r] {
        l -= 1
        r += 1
    }
    return l...r
}
