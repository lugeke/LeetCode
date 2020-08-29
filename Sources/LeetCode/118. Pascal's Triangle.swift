//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    
    var result = [[Int]]()
    var row = [Int]()
    for _ in 0..<numRows {
        var current = row
        for i in stride(from: 1, to: row.count, by: 1) {
            current[i] = row[i] + row[i-1]
        }
        current.append(1)
        result.append(current)
        row = current
    }
    
    return result
}
