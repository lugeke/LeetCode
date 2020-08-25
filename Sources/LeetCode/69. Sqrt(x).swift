//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/24.
//

import Foundation
func mySqrt1(_ x: Int) -> Int {
    for i in 1...x {
        if i*i <= x && (i+1)*(i+1) > x {
            return i
        }
    }
    return 0
}


func mySqrt(_ n: Int) -> Int {
    
    var low = 1, high = n
    
    while low <= high {
        let mid = low + (high - low) / 2
        if n < mid*mid {
            high = mid - 1
        } else if n < (mid+1)*(mid+1) {
            return mid
        } else {
            low = mid + 1
        }
    }
    
    return 0
}

func mySqrt2(_ x: Int) -> Int {
    if x <= 1 { return x }
    var l = 0
    var r = x / 2
    while l <= r {
        let mid = l + (r - l) / 2
        let val = mid * mid
        if val == x {
            return mid
        } else if val < x {
            l = mid + 1
        } else {
            r = mid - 1
        }
    }
    return r
}

// Newton's method
func mySqrt3(_ x: Int) -> Int {
    var nextGuess = 1.0
    while abs(nextGuess*nextGuess-Double(x)) > 0.0001 {
        nextGuess = (nextGuess + Double(x)/nextGuess) / 2.0
    }
    return Int(nextGuess)
}


