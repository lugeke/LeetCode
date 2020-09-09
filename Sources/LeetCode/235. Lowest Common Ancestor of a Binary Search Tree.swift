//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation
func lowestCommonAncestorBST(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    let small = min(p!.val, q!.val)
    let big = max(p!.val, q!.val)
    let val = root!.val
    
    if small <= val && val <= big {
        return root
    } else if big < val {
        return lowestCommonAncestorBST(root?.left, p, q)
    } else{
        return lowestCommonAncestorBST(root?.right, p, q)
    }
    
}

func lowestCommonAncestorBST1(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let root = root, let p = p, let q = q else { return nil }
    
    if p.val < root.val && q.val < root.val {
        return lowestCommonAncestorBST1(root.left, p, q)
    } else if p.val > root.val && q.val > root.val {
        return lowestCommonAncestorBST1(root.right, p, q)
    } else {
        return root
    }
    
}
