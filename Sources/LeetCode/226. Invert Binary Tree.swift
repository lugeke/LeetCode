//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    
    (root.left, root.right) = (invertTree(root.right), invertTree(root.left))
    
    return root
}

