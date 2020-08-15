//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/11.
//

import Foundation

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    
    var result: [Set<[Int]>] = .init(repeating: [], count: target+1)
    
    let candidates = candidates.sorted()
    
    for i in candidates {
        if i > target { break }
        result[i].insert([i])
    }
    
    for i in 1...target {
        for j in candidates {
            if i - j <= 0 { break }
            if result[i-j].count > 0 {
                result[i].formUnion(result[i-j].map{ ($0 + [j]).sorted() })
            }
        }
    }
    
    return result[target].map { Array($0) }
}

func combinationSum1(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var row = [Int]()
        _combinationSum(candidates.sorted(), target, 0, &result, &row)
        return result
    }
    
    func _combinationSum(_ candidates: [Int], _ target: Int, _ start: Int, _ result: inout [[Int]], _ row: inout [Int]) {
        if target == 0 {
            result.append(row)
            return
        }
        for i in start..<candidates.count {
            if candidates[i] > target { break }
            row.append(candidates[i])
            _combinationSum(candidates, target - candidates[i], i, &result, &row)
            row.removeLast()
        }
    }
