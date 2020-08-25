//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/25.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    guard n > 2 else {
        return n
    }
    
    var result = [Int].init(repeating: 0, count: n+1)
    result[1] = 1
    result[2] = 2
    
    for i in 3...n {
        result[i] = result[i-1] + result[i-2]
    }
    
    return result[n]
}
