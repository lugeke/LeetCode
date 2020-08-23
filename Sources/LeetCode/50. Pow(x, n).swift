//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/23.
//

import Foundation

func myPow(_ x: Double, _ n: Int) -> Double {
    let result = power(x, UInt(abs(n)))
    
    return n < 0 ? 1 / result : result
}


func power(_ base: Double, _ exponent: UInt) -> Double {
    if exponent == 0 { return 1 }
    
    var i = power(base, exponent >> 1)
    i *= i
    if exponent & 1 == 1 { i *= base }
    return i
}
