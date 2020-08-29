//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/27.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {

    let s = s.compactMap { $0.isNumber || $0.isLetter ? $0.lowercased() : nil }
    return s.isSymmetric
}
