//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/14.
//

import Foundation

func nthUglyNumber(_ n: Int) -> Int {
    if n<=0 { return 0}
    var cache = [Int]()
    cache.reserveCapacity(n)
    cache.append(1)
    
    var lastIndex2 = 0, lastIndex3 = 0, lastIndex5 = 0
    for _ in 1..<n {
        let m = min(cache[lastIndex2]*2, cache[lastIndex3]*3, cache[lastIndex5]*5)
        cache.append(m)
        
        if cache[lastIndex2]*2 == m {
            lastIndex2 += 1
        }
        if cache[lastIndex3]*3 == m {
            lastIndex3 += 1
        }
        if cache[lastIndex5]*5 == m {
            lastIndex5 += 1
        }
    }
    return cache[n-1]
}
