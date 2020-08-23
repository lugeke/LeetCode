//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/23.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count
    for i in 0..<n/2 {
        for j in i..<n-1-i {
            (matrix[i][j], matrix[j][n-1-i]) = (matrix[j][n-1-i], matrix[i][j])
            (matrix[i][j], matrix[n-1-i][n-1-j]) = (matrix[n-1-i][n-1-j], matrix[i][j])
            (matrix[i][j], matrix[n-1-j][i]) = (matrix[n-1-j][i], matrix[i][j])
//            swap(&matrix[i][j], &matrix[j][n-1-i])
//            swap(&matrix[i][j], &matrix[n-1-i][n-1-j])
//            swap(&matrix[i][j], &matrix[n-1-j][i])
        }
    }
}
