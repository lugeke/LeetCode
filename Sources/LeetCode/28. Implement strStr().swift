//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    guard  !needle.isEmpty else { return 0 }
    
    let diff = haystack.count-needle.count
    if diff < 0 { return -1 }
    
    var index = haystack.startIndex
    for i in 0...diff {
        if haystack[index...].starts(with: needle) {
            return i
        }
        haystack.formIndex(after: &index)
    }
    
    return -1
    
}
