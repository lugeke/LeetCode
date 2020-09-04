//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/30.
//

import Foundation

func titleToNumber(_ s: String) -> Int {
    var result = 0
    var base = 1
    let A = Character("A").asciiValue!
    for letter in s.utf8.reversed() {
        result += Int((letter - A) + 1) * base
        base *= 26
    }
    
    return result
}
