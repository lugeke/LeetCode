//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/14.
//

import Foundation

func isUgly(_ num: Int) -> Bool {
    guard num > 0 else {
        return false
    }
    var num = num
    
    while num.isMultiple(of: 2) {
        num /= 2
    }
    while num.isMultiple(of: 3) {
        num /= 3
    }
    while num.isMultiple(of: 5) {
        num /= 5
    }
    
    return num == 1
}
