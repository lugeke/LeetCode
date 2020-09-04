//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation
func isSymmetric1(_ root: TreeNode?) -> Bool {
    func isSymmetric(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        switch (p?.val, q?.val) {
        case (nil, nil):
            return true
        case (nil, _?), (_?, nil):
            return false
        case let (v1?, v2?) :
            return v1 == v2 && isSymmetric(p?.left, q?.right) && isSymmetric(p?.right, q?.left)
        }
    }
    return isSymmetric(root?.left, root?.right)
}



func isSymmetric(_ root: TreeNode?) -> Bool {
    var ary = [root]
    var start = 0
    while start < ary.endIndex {
        guard ary[start...].isSymmetric(by: {$0?.val == $1?.val}) else { return false }
        
        let end = ary.endIndex
        for case let node? in ary[start...] {
            ary.append(node.left)
            ary.append(node.right)
        }
        start = end
    }
    return true
}
