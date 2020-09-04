//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/4.
//

import Foundation
// recursively
func reverseList(_ head: ListNode?) -> ListNode? {
    
    func reverse(node: ListNode) -> (head: ListNode, tail: ListNode) {
        guard let next = node.next else {
            return (node, node)
        }
        var (head, tail) = reverse(node: next)
        tail.next = node
        tail = node
        tail.next = nil
        return (head, tail)
    }
    
    guard let head = head else {
        return nil
    }
    
    return reverse(node: head).head
}

// iteratively
func reverseList1(head: ListNode?) -> ListNode? {
    var current: ListNode? = head
    var head: ListNode?
    
    while let c = current {
        let next = c.next
        c.next = head
        head = c
        current = next
    }
    
    return head
}
