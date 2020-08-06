//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func rotateString(_ A: String, _ B: String) -> Bool {
    
    guard A.count == B.count else { return false }
    if A.isEmpty { return true }
    let double = A + A
    return double.contains(B)
}
