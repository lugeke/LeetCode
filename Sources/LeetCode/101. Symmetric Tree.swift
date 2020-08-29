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
        guard ary[start...].isSymmetric else { return false }
        
        let end = ary.endIndex
        for case let node? in ary[start...] {
            ary.append(node.left)
            ary.append(node.right)
        }
        start = end
    }
    return true
}

extension BidirectionalCollection where Element: Equatable {
    ///- Complexity: O(*n*) , where *n* is the number of elements in `Self`
    var isSymmetric: Bool {
        guard !isEmpty else {
            return true
        }
        var i = startIndex, j = index(before: endIndex)
        while i < j {
            if self[i] != self [j] { return false }
            formIndex(after: &i)
            formIndex(before: &j)
        }
        return true
    }
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val
    }
}
