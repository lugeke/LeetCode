//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/25.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var p = head
    
    while let q = p?.next {
        if q.val == p!.val {
            p!.next = q.next
        } else {
            p = p!.next
        }
    }
    
    return head
}
