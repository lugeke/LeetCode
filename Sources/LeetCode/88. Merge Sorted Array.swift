//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var i = m - 1, j = n - 1
    for k in (0..<m+n).reversed() {
        if j == -1 || (i != -1 && nums1[i] >= nums2[j]) {
            nums1[k] = nums1[i]
            i -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
        }
    }
}
