//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/3.
//

import Foundation

func reverse1(_ x: Int) -> Int {
    var rev = 0
    var x = x
    while (x != 0) {
        let pop = x % 10
        x /= 10
        if (rev > Int32.max/10 || (rev == Int32.max / 10 && pop > 7)) {return 0}
        if (rev < Int32.min/10 || (rev == Int32.min / 10 && pop < -8)) { return 0}
        rev = rev * 10 + pop
    }
    return rev
}

func reverse(_ x: Int) -> Int {
    let reversed = String(String(abs(x)).reversed())
    let revsrsedInt64 = Int64(reversed)! * (x<0 ? -1 : 1)
    return Int(Int32(exactly: revsrsedInt64)  ?? 0)
}
