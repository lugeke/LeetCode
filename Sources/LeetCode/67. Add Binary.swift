//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/24.
//

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    var a = a.utf8.reversed().makeIterator()
    var b = b.utf8.reversed().makeIterator()
    
    var result: [UInt8] = []
    var carry: UInt8 = 0
    let zeroAsciiValue = Character("0").asciiValue!
    outer: while true {
        switch (a.next(), b.next()) {
        case (nil, nil):
            break outer
        case let(i, j):
            let i = (i ?? zeroAsciiValue) - zeroAsciiValue
            let j = (j ?? zeroAsciiValue) - zeroAsciiValue
            let remainder: UInt8
            (carry, remainder) = (i + j + carry).quotientAndRemainder(dividingBy: 2)
            result.append(remainder)
        }
    }
    
    if carry == 1 { result.append(1) }
    
    return result.reversed().map(String.init).joined()
}
