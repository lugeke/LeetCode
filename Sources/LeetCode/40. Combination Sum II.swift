//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/12.
//

import Foundation

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    
    func _combinationSum(_ candidates: [Int], _ target: Int, _ start: Int, _ result: inout [[Int]], _ row: inout [Int]) {
        if target == 0 {
            result.append(row)
            return
        }
        for i in start..<candidates.count {
            if candidates[i] > target { break }
            row.append(candidates[i])
            _combinationSum(candidates, target - candidates[i], i+1, &result, &row)
            row.removeLast()
        }
    }
    
    var result = [[Int]]()
    var row = [Int]()
    _combinationSum(candidates.sorted(), target, 0, &result, &row)
    return Array(Set(result))
}



