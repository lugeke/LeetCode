//
//  File.swift
//  
//
//  Created by lujiaheng on 2020/8/8.
//

import Foundation

func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            switch char {
            case "(", "[", "{", "<":
                stack.append(char)
            case ")":
                guard stack.popLast() == "(" else { return false }
            case "]":
                guard stack.popLast() == "[" else { return false }
            case "}":
                guard stack.popLast() == "{" else { return false }
            case ">":
                guard stack.popLast() == "<" else { return false }
            default:
                return false

            }
        }

        return stack.isEmpty

    }
