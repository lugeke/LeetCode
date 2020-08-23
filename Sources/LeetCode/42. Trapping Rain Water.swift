//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/18.
//

import Foundation

func trap(_ height: [Int]) -> Int {
  
    guard let maxIndex = height.indices.max(by: {height[$0] < height[$1]}) else { return 0 }
    var water = 0
    
    var peak = 0
    for h in height[..<maxIndex] {
        if h > peak { peak = h }
        else { water += peak - h}
    }
    
    peak = 0
    for h in height[(maxIndex+1)...].reversed() {
        if h > peak { peak = h }
        else { water += peak - h}
    }
    
    return water
}
