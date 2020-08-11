//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/10.
//

import Foundation

func solveSudoku(_ board: inout [[Character]]) {
    
    struct EmptyPostions {
        struct Point: Hashable {
            let i: Int
            let j: Int
        }
        var emptyPoints = Set<Point>()
        var valuesToFill: Set<Character> = ["1" as Character, "2", "3", "4", "5" ,"6", "7", "8", "9"]
        var count: Int { valuesToFill.count }
        
        mutating func process(point: Point, value: Character) {
            if value != "." {
                valuesToFill.remove(value)
            } else {
                emptyPoints.insert(point)
            }
        }
        
        mutating func fill(point: Point, value: Character) {
            emptyPoints.remove(point)
            valuesToFill.remove(value)
        }
        
        mutating func empty(point: Point, originalValue: Character) {
            emptyPoints.insert(point)
            valuesToFill.insert(originalValue)
        }
    }
    
    enum Positon {
        case row(Int)
        case col(Int)
        case grid(Int)
    }
    
    func findEmptyPositions(_ p: Positon) -> EmptyPostions {
        
        var empty = EmptyPostions()
        switch p {
        case .row(let row):
            for col in 0..<9 {
                empty.process(point: .init(i: row, j: col), value: board[row][col])
            }
        case .col(let col):
            for row in 0..<9 {
                empty.process(point: .init(i: row, j: col), value: board[row][col])
            }
        case .grid(let grid):
            for row in grid/3*3..<grid/3*3+3 {
                for col in grid%3*3..<grid%3*3+3 {
                    empty.process(point: .init(i: row, j: col), value: board[row][col])
                }
            }
        }
        return empty
    }
    
    var emptyRows: [EmptyPostions] = []
    var emptyCols: [EmptyPostions] = []
    var emptyGrids: [EmptyPostions] = []
    
    for i in 0..<9 {
        emptyRows.append(findEmptyPositions(.row(i)))
        emptyCols.append(findEmptyPositions(.col(i)))
        emptyGrids.append(findEmptyPositions(.grid(i)))
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
        
        let p = (emptyRows + emptyCols + emptyGrids).min{
            if $0.count == 0 { return false }
            else if $1.count == 0 { return true }
            else { return $0.count < $1.count }
        }!
        
        if p.count > 0 {
            var valuesToFill = Array(p.valuesToFill)
            let points = p.emptyPoints
            outer: for _ in 1...p.count.factorial {
                valuesToFill.nextPermutations()
                for (point, value) in zip(points, valuesToFill) {
                    if !isValid(point.i, j: point.j, val: value) {
                        continue outer
                    }
                }
                // fill value
                for (point, value) in zip(points, valuesToFill) {
                    board[point.i][point.j] = value
                    emptyRows[point.i].fill(point: point, value: value)
                    emptyCols[point.j].fill(point: point, value: value)
                    emptyGrids[point.i/3*3+point.j/3].fill(point: point, value: value)
                }
                if solveSudoku(&board) { return true }
                // empty value
                for (point, value) in zip(points, valuesToFill) {
                    board[point.i][point.j] = "."
                    emptyRows[point.i].empty(point: point, originalValue: value)
                    emptyCols[point.j].empty(point: point, originalValue: value)
                    emptyGrids[point.i/3*3+point.j/3].empty(point: point, originalValue: value)
                }
            }
            return false
        } else {
            return true
        }
        
    }
    solveSudoku(&board)
    
}

func solveSudoku1(_ board: inout [[Character]]) {
    
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
