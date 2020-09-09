//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    
    if root.val == p?.val || root.val == q?.val { return root }
    
    let left = lowestCommonAncestor(root.left, p, q)
    let right = lowestCommonAncestor(root.right, p, q)
    
    if left != nil && right != nil { return root }
    return left ?? right
}


// transform to problem of first common node in two link list
func lowestCommonAncestor1(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let root = root, let p = p, let q = q else { return nil }
    
    var pathToP: [TreeNode] = []
    var pathToQ: [TreeNode] = []
    var path: [TreeNode] = []
    func preorder(_ root: TreeNode) {
        path.append(root)
        if root.val == p.val {
            pathToP = path
        }
        if root.val == q.val {
            pathToQ = path
        }
        
        if pathToP.isEmpty || pathToQ.isEmpty {
            if let left = root.left {
                preorder(left)
            }
            if let right = root.right {
                preorder(right)
            }
        }
        _ = path.popLast()
    }
    
    preorder(root)
    
    let minLength = min(pathToP.count, pathToQ.count)
    
    return zip(pathToP.prefix(minLength).reversed(), pathToQ.prefix(minLength).reversed()).first{
        $0.val == $1.val
    }?.0
    
}
