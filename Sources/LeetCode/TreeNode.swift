//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

extension TreeNode {
    // 用数组构建二叉搜索树
    public convenience init?(ary: [Int?]) {
        if ary.count == 0 || ary[0] == nil {
            return nil
        }
        self.init(ary[0]!)
        construct(ary: ary, root: self, index: 0)
    }
    
    private func construct(ary: [Int?], root: TreeNode, index: Int) {
    
        if case let left = index*2 + 1, left < ary.endIndex, let value = ary[left] {
            root.left = TreeNode(value)
            construct(ary: ary, root: root.left!, index: left)
        }
        
        if case let right = index*2 + 2, right < ary.endIndex, let value = ary[right] {
            root.right = TreeNode(value)
            construct(ary: ary, root: root.right!, index: right)
        }
        
    }
}


extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }
}


extension TreeNode {
    public func inorder() {
        left?.inorder()
        print(val, terminator: " ")
        right?.inorder()
        
    }
    
    public func postorder() {
        left?.postorder()
        right?.postorder()
        print(val, terminator: " ")
    }
    
    public func preorder() {
        print(val, terminator: " ")
        left?.preorder()
        right?.preorder()
    }
}
