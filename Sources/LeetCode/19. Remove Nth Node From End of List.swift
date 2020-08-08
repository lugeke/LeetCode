//
//  File 2.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

extension ListNode {
    func findKthToTail(_ k: Int) -> ListNode? {
        if k <= 0 { return nil }
        var ahead: ListNode? = self
        for _ in 0..<k {
            guard let x = ahead else {
                return nil
            }
            ahead = x.next
        }
        
        var behind = self
        while ahead != nil {
            ahead = ahead?.next
            behind = behind.next!
        }
        
        return behind
    }
}


func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let dummy = ListNode()
    dummy.next = head
    
    if let node = dummy.findKthToTail(n+1) {
        node.next = node.next?.next
    }
    
    return dummy.next
}
