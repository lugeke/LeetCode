//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else {
        return []
    }
    
    var level = [root]
    var result = [[Int]]()
    while !level.isEmpty {
        result.append(level.map( {$0.val}))
        var nextLevel: [TreeNode] = []
        for node in level {
            if let left = node.left { nextLevel.append(left) }
            if let right = node.right { nextLevel.append(right) }
        }
        level = nextLevel
    }
    return result.reversed()
}
