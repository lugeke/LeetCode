//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/14.
//

import Foundation

func addDigits(_ num: Int) -> Int {
    var result = num
    while result > 9 {
        result = String(result).reduce(0) {
            $0 + Int(String($1))!
        }
    }
    return result
}
