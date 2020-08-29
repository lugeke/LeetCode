//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation
func maxProfit2(_ prices: [Int]) -> Int {
    var maxprofit = 0
    for i in stride(from: 1, to: prices.count, by: 1) {
        if prices[i] > prices[i - 1] {
            maxprofit += prices[i] - prices[i - 1]
        }
    }
    return maxprofit
}
