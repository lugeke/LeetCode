//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
//    if p == nil && q == nil { return true }
//    guard p?.val == q?.val else {
//        return false
//    }
//
//    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    
    
    switch (p?.val, q?.val) {
    case (nil, nil):
        return true
    case (nil, _?), (_?, nil):
        return false
    case let (v1?, v2?) :
        return v1 == v2 && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
