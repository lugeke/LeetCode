//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/26.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    var profit = 0
    var minPrice = prices[0]
    for price in prices.dropFirst() {
        profit = max(profit, price - minPrice)
        minPrice = min(minPrice, price)
    }
    return profit
}
