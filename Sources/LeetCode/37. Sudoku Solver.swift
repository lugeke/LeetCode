//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/10.
//

import Foundation

let positions: [[(Int, Int)]] = {
    var result = [[(Int, Int)]]()
    
    // row
    for i in 0..<9 {
        var r = [(Int, Int)]()
        for j in 0..<9 {
            r.append((i, j))
        }
        result.append(r)
    }
    // col
    for i in 0..<9 {
        var r = [(Int, Int)]()
        for j in 0..<9 {
            r.append((j, i))
        }
        result.append(r)
    }
    // sub-box
    for k in 0..<9 {
        var r = [(Int, Int)]()
        for i in (k/3)*3 + 0..<(k/3)*3 + 3 {
            for j in (k%3)*3 + 0..<(k%3)*3 + 3 {
                r.append((i, j))
            }
        }
        result.append(r)
    }
    return result
}()

func solveSudoku1(_ board: inout [[Character]]) {
    
    struct EmptyPostion {
        var points = [(Int, Int)]()
        var values = ["1" as Character, "2", "3", "4", "5" ,"6", "7", "8", "9"]
        var count: Int { values.count }
    }
    
    @discardableResult func solveSudoku(_ board: inout [[Character]]) -> Bool {
        
        func isValid(_ i: Int, j: Int, val: Character) -> Bool {
            // row col
            for k in 0..<9 {
                if board[i][k] == val || board[k][j] == val {  return false }
            }
            
            // grid
            for i in (i/3)*3 + 0..<(i/3)*3 + 3 {
                for j in (j/3)*3 + 0..<(j/3)*3 + 3 {
                    if board[i][j] == val {  return false }
                }
            }
            return true
        }
        
        func findEmptyPosition<S>(_ positions: S) -> EmptyPostion where S: Sequence, S.Element == (Int, Int){
            var empty = EmptyPostion()
            for p in positions {
                if board[p.0][p.1] != "." {
                    empty.values.remove(at: empty.values.firstIndex(of: board[p.0][p.1])!)
                    
                } else {
                    empty.points.append((p.0, p.1))
                }
            }
            return empty
        }
        
        let p = positions.map(findEmptyPosition(_:)).filter ({ $0.count > 0
        }).min(by: {$0.count < $1.count})
        
        if var p = p {
            
            outer: for _ in 1...p.count.factorial {
                
                p.values.nextPermutations()
                for j in 0..<p.count {
                    if !isValid(p.points[j].0, j: p.points[j].1, val: p.values[j]) {
                        continue outer
                    }
                }
                
                for j in 0..<p.count {
                    board[p.points[j].0][p.points[j].1] = p.values[j]
                }
                
                if solveSudoku(&board) { return true }
                
                for j in 0..<p.count {
                    board[p.points[j].0][p.points[j].1] = "."
                }
                
            }
            return false
        } else { return true }
        
    }
    solveSudoku(&board)
}

func solveSudoku(_ board: inout [[Character]]) {
    
    @discardableResult func solveSudoku(_ board: inout [[Character]]) -> Bool {
        
        func isValid(_ i: Int, j: Int, val: Character) -> Bool {
            // row col
            for k in 0..<9 {
                if board[i][k] == val || board[k][j] == val {  return false }
            }
            
            // grid
            for i in (i/3)*3 + 0..<(i/3)*3 + 3 {
                for j in (j/3)*3 + 0..<(j/3)*3 + 3 {
                    if board[i][j] == val {  return false }
                }
            }
            return true
        }
        
        func findEmptyPosition() -> (Int, Int)?{
            for i in 0..<9 {
                for j in 0..<9 {
                    if board[i][j] == "." {
                        return (i, j)
                    }
                }
            }
            return nil
        }
        
        if let p = findEmptyPosition() {
            for char in ["1" as Character, "2", "3", "4", "5" ,"6", "7", "8", "9"] {
                if isValid(p.0, j: p.1, val: char) {
                    board[p.0][p.1] = char
                    if solveSudoku(&board) {
                        return true
                    }
                    board[p.0][p.1] = "."
                }
            }
            return false
        } else {
            return true
        }
        
    }
    solveSudoku(&board)
}


extension Int {
    var factorial: Int {
        (1...self).reduce(1, { $0 * $1})
    }
}
