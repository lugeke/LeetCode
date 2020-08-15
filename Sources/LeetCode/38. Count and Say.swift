//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/11.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    var result = "1"
    
    for _ in 1..<n {
        var count = 1
        var temp = ""
        for (previous, current) in zip(result, result.dropFirst()) {
            if current != previous {
                temp += String(count) + String(previous)
                count = 1
            } else {
                count += 1
            }
        }
        temp += String(count) + String(result.last!)
        result = temp
    }
    
    return result
}
