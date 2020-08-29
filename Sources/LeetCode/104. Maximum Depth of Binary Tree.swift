//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation
func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return 1 + max(maxDepth(root.left),  maxDepth(root.right))
}
