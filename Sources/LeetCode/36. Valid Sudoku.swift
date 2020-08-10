//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/10.
//

import Foundation

func isValidSudoku1(_ board: [[Character]]) -> Bool {
    
    func isValid<S>(_ s: S) -> Bool where S: Sequence, S.Element == Character {
        var seen = Set<Character>()
        for char in s where char != "." {
            guard case (true, _) = seen.insert(char) else {
                return false
            }
        }
        return true
    }
    
    // rows
    for i in 0..<9 {
        guard isValid(board[i]) else { return false }
    }
    
    // cols
    for i in 0..<9 {
        var col = [Character]()
        for j in 0..<9 {
            col.append(board[j][i])
        }
        guard isValid(col) else { return false }
    }
    
    // sub-boxes
    for k in 0..<9 {
        var subBox = [Character]()
        for i in (k/3)*3 + 0..<(k/3)*3 + 3 {
            for j in (k%3)*3 + 0..<(k%3)*3 + 3 {
                subBox.append(board[i][j])
            }
        }
        guard isValid(subBox) else { return false }
    }
    
    return true
}

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    let n = board.count
    //record[0][i][x] true:x show at row i
    //record[1][j][x] true:x show at row j
    //record[2][k][x] true:x show at grid k
    var record = [[[Bool]]].init(repeating: .init(repeating: .init(repeating: false, count: n+1), count: n+1), count: 3)
    for i in 0..<n {
        for j in 0..<n where board[i][j] != "." {
            let k = i/3*3+j/3
            let x = Int(board[i][j].asciiValue! - Character("0").asciiValue!)
            if record[0][i][x]||record[1][j][x]||record[2][k][x] { return false }
            else {
                record[0][i][x] = true
                record[1][j][x] = true
                record[2][k][x] = true
            }
        }
    }
    return true
}

