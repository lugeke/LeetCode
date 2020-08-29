//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func isBalanced(_ root: TreeNode?) -> Bool {
    func isBalanced(_ root: TreeNode?, _ depth:inout Int) -> Bool {
        guard let root = root else {
            depth = 0
            return true
        }
        var left = 0, right = 0
        guard isBalanced(root.left, &left) && isBalanced(root.right, &right) else {
            return false
        }
        depth = max(left, right) + 1
        return abs(left-right) <= 1
    }
    var depth = 0
    return isBalanced(root, &depth)
}


