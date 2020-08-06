//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummyHead = ListNode(0)
    var carry = 0
    var p = l1
    var q = l2
    var current = dummyHead
    while p != nil || q != nil {
        let x = p?.val ?? 0
        let y = q?.val ?? 0
        let sum = x + y + carry
        carry = sum / 10
        current.next = ListNode(sum % 10)
        current = current.next!
        p = p?.next
        q = q?.next
    }
    
    if carry != 0 {
        current.next = ListNode(carry)
    }
    
    return dummyHead.next
}
