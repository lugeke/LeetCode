//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/29.
//

import Foundation

extension ListNode: Hashable {
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}

func hasCycle1(_ head: ListNode?) -> Bool {
    guard var head = head else {
        return false
    }
    
    var set: Set<ListNode> = [head]
    
    while let p = head.next {
        guard set.insert(p).inserted else { return true }
        head = p
    }
    return false
}

// Two Pointers
func hasCycle(_ head: ListNode?) -> Bool {
    guard var slow = head, var fast = slow.next else {
        return false
    }
    
    while fast !== slow {
        if let f = fast.next?.next {
            slow = slow.next!
            fast = f
        } else {
            return false
        }
    }
    
    return true
}
