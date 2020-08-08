//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/6.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    
    guard let minLength = strs.map({ $0.count }).min() else { return "" }
    
    for i in 0..<minLength {
        let index = strs[0].index(strs[0].startIndex, offsetBy: i)
        let ithChars = strs.map( { $0[index] })
        let first = ithChars.first!
        if !ithChars.dropFirst().allSatisfy( { $0 == first}) {
            return String(strs[0].prefix(i))
        }
    }
    
    return String(strs[0].prefix(minLength))
}
