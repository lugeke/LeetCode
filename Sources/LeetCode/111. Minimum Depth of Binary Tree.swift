//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func minDepth1(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    
    var level = [root]
    var minDepth = 1
    while !level.isEmpty {
        var nextLevel: [TreeNode] = []
        for node in level {
            if node.left == nil && node.right == nil { return minDepth }
            if let left = node.left { nextLevel.append(left) }
            if let right = node.right { nextLevel.append(right) }
        }
        level = nextLevel
        minDepth += 1
    }
    return minDepth
}

func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    if root.left == nil && root.right == nil {
        return 1
    }
    
    if root.left == nil {
        return minDepth(root.right) + 1
    }
    if root.right == nil {
        return minDepth(root.left) + 1
    }
    
    return min(minDepth(root.left), minDepth(root.right)) + 1
}
