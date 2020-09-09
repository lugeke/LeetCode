//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/6.
//

import Foundation

func deleteNode(_ node: ListNode?) {
    guard let node = node else { return }
    node.val = node.next!.val
    node.next = node.next!.next
}
