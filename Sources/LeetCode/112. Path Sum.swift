//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard let root = root else { return false }
    
    if root.left == nil && root.right == nil && sum == root.val {
        return true
    }
    
    return hasPathSum(root.left, sum-root.val) || hasPathSum(root.right, sum-root.val)
}
