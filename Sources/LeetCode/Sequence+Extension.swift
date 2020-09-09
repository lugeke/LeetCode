//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/9/9.
//

import Foundation

extension Sequence where Element: Hashable {
    func frequency() -> [Element: Int] {
        Dictionary(self.lazy.map{ v in (v, 1) }, uniquingKeysWith: +)
    }
}
