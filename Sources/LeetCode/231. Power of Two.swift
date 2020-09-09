//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation

func isPowerOfTwo(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    return n & (n-1) == 0
}
