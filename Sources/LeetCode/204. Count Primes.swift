//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/3.
//

import Foundation

func countPrimes(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    
    var seive = Array(repeating: true, count: n)
    
    for i in 2..<Int(Double(n).squareRoot().rounded(.up)) where seive[i] {
        for j in stride(from: i*i, to: n, by: i) {
            seive[j] = false
        }
    }

    return seive[2...].lazy.filter({ $0 }).count
}
