import XCTest
@testable import LeetCode

final class LeetCodeTests: XCTestCase {
    
    func test1() {
        XCTAssertEqual(twoSum([2,7,11,15], 9), [0, 1])
    }
    
    func test5() {
        XCTAssertEqual(longestPalindrome("babad"), "bab")
        XCTAssertEqual(longestPalindrome("aba"), "aba")
        XCTAssertEqual(longestPalindrome(""), "")
    }
    
    func test7() {
        XCTAssertEqual(reverse(123), 321)
        XCTAssertEqual(reverse(-123), -321)
        XCTAssertEqual(reverse(120), 21)
    }
    
    func test9() {
        XCTAssertTrue(isPalindrome(121))
        //9223372036854775807
        XCTAssertFalse(isPalindrome(Int.max))
        XCTAssertFalse(isPalindrome(1223372036854775899))
    }
    
    func test11() {
        XCTAssertEqual(maxArea([1,8,6,2,5,4,8,3,7]), 49)
    }
    
    func test14() {
        XCTAssertEqual(longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(longestCommonPrefix(["dog","racecar","car"]), "")
    }
    
    func testBinarySearch() {
        var ary = Array(1...100)
        for i in 1...100 {
            XCTAssertEqual(ary.binarySearch(i).middle , i-1)
        }
        ary = [1,3]
        XCTAssertNil(ary.binarySearch(10).middle)
        XCTAssertNil(ary.binarySearch(0).middle)
        XCTAssertEqual(ary.binarySearch(1).middle, 0)
    }
    
    func test15() {
        
        XCTAssertEqual(threeSum([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
        XCTAssertEqual(threeSum([2,2,3,0,-3,-4]), [[-4, 2, 2], [-3, 0, 3]])
        XCTAssertEqual(threeSum([0,0,0]), [[0, 0, 0]])
        XCTAssertEqual(threeSum([0,0,0,0]), [[0, 0, 0]])
        XCTAssertEqual(threeSum([3,0,-2,-1,1,2]), [[-2, -1, 3], [-2, 0, 2], [-1, 0, 1]])
    }
    
    func test25() {
        var nums = [1,1,2]
        
        XCTAssertEqual(removeDuplicates(&nums), 2)
        XCTAssertEqual(nums.prefix(2), [1,2])
        
        nums = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(removeDuplicates(&nums), 5)
        XCTAssertEqual(nums.prefix(5), [0, 1, 2, 3, 4])
    }
    
    func test28() {
        XCTAssertEqual(strStr("hello", "ll"), 2)
        XCTAssertEqual(strStr("aaaaa", "bba"), -1)
        XCTAssertEqual(strStr("a", "a"), 0)
    }
    
    func test31() {
        var ary = [1,2,3]
        nextPermutation(&ary)
        XCTAssertEqual(ary, [1,3,2])
        
        ary = [3,2,1]
        nextPermutation(&ary)
        XCTAssertEqual(ary, [1,2,3])
        
        ary = [1,1,5]
        nextPermutation(&ary)
        XCTAssertEqual(ary, [1,5,1])
    }
    
    func test32() {
        XCTAssertEqual(longestValidParentheses("(()"), 2)
        XCTAssertEqual(longestValidParentheses(")()())"), 4)
        XCTAssertEqual(longestValidParentheses(")()())(((())()))"), 10)
    }
    
    func test33() {
        XCTAssertEqual(search([4,5,6,7,0,1,2], 0), 4)
        XCTAssertEqual(search([4,5,6,7,0,1,2], 3), -1)
    }
    
    func test34() {
        XCTAssertEqual(searchRange([5,7,7,8,8,10], 8), [3,4])
        XCTAssertEqual(searchRange([5,7,7,8,8,10], 6), [-1,-1])
    }
    
    func test35() {
        XCTAssertEqual(searchInsert([1,3,5,6], 5), 2)
        XCTAssertEqual(searchInsert([1,3,5,6], 2), 1)
        XCTAssertEqual(searchInsert([1,3,5,6], 7), 4)
        XCTAssertEqual(searchInsert([1,3,5,6], 0), 0)
        
        XCTAssertEqual(searchInsert([1,3], 0), 0)
    }
    
    func test36() {
        XCTAssertTrue(isValidSudoku([
            ["5","3",".",".","7",".",".",".","."],
            ["6",".",".","1","9","5",".",".","."],
            [".","9","8",".",".",".",".","6","."],
            ["8",".",".",".","6",".",".",".","3"],
            ["4",".",".","8",".","3",".",".","1"],
            ["7",".",".",".","2",".",".",".","6"],
            [".","6",".",".",".",".","2","8","."],
            [".",".",".","4","1","9",".",".","5"],
            [".",".",".",".","8",".",".","7","9"]
        ]))
        
        XCTAssertFalse(isValidSudoku([
            ["8","3",".",".","7",".",".",".","."],
            ["6",".",".","1","9","5",".",".","."],
            [".","9","8",".",".",".",".","6","."],
            ["8",".",".",".","6",".",".",".","3"],
            ["4",".",".","8",".","3",".",".","1"],
            ["7",".",".",".","2",".",".",".","6"],
            [".","6",".",".",".",".","2","8","."],
            [".",".",".","4","1","9",".",".","5"],
            [".",".",".",".","8",".",".","7","9"]
        ]))
    }
    
    
    func test37() {
        var board = [["5" as Character,"3",".",".","7",".",".",".","."],
                     ["6",".",".","1","9","5",".",".","."],
                     [".","9","8",".",".",".",".","6","."],
                     ["8",".",".",".","6",".",".",".","3"],
                     ["4",".",".","8",".","3",".",".","1"],
                     ["7",".",".",".","2",".",".",".","6"],
                     [".","6",".",".",".",".","2","8","."],
                     [".",".",".","4","1","9",".",".","5"],
                     [".",".",".",".","8",".",".","7","9"]]
        solveSudoku(&board)
        
        XCTAssertEqual(board, [["5", "3", "4", "6", "7", "8", "9", "1", "2"],
                               ["6", "7", "2", "1", "9", "5", "3", "4", "8"],
                               ["1", "9", "8", "3", "4", "2", "5", "6", "7"],
                               ["8", "5", "9", "7", "6", "1", "4", "2", "3"],
                               ["4", "2", "6", "8", "5", "3", "7", "9", "1"],
                               ["7", "1", "3", "9", "2", "4", "8", "5", "6"],
                               ["9", "6", "1", "5", "3", "7", "2", "8", "4"],
                               ["2", "8", "7", "4", "1", "9", "6", "3", "5"],
                               ["3", "4", "5", "2", "8", "6", "1", "7", "9"]])
        
    }
    
    func test38() {
        XCTAssertEqual(countAndSay(1), "1")
        XCTAssertEqual(countAndSay(2), "11")
        XCTAssertEqual(countAndSay(3), "21")
        XCTAssertEqual(countAndSay(4), "1211")
        XCTAssertEqual(countAndSay(5), "111221")
    }
    
    func test39() {
        XCTAssertEqual(Set(combinationSum([2,3,6,7], 7)), [[7], [2, 2, 3]])
        XCTAssertEqual(Set(combinationSum([2,3,5], 8)), [[3, 5], [2, 2, 2, 2], [2, 3, 3]])
        XCTAssertEqual(Set(combinationSum([2], 1)), [])
    }
    
    func test40() {
        XCTAssertEqual(Set(combinationSum2([10,1,2,7,6,1,5], 8)),
                       [[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]])
        XCTAssertEqual(Set(combinationSum2([2,5,2,1,2], 5)),
                       [[1,2,2],[5]])
        
    }
    
    func test42() {
        XCTAssertEqual(trap([0,1,0,2,1,0,1,3,2,1,2,1]), 6)
        XCTAssertEqual(trap([]), 0)
    }
    
    func test45() {
//        XCTAssertEqual(jump([2,3,1,1,4]), 2)
//        XCTAssertEqual(jump([2,0,2,0,1]), 2)
//        XCTAssertEqual(jump([7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]), 2)
        XCTAssertEqual(jump([1,1,1,1]), 3)
    }
    
    func test46() {
        XCTAssertEqual(Set(permute([1,2,3])), [
            [1,2,3],
            [1,3,2],
            [2,1,3],
            [2,3,1],
            [3,1,2],
            [3,2,1]
        ])
        XCTAssertEqual(permute([]), [[]])
    }
    
    func test47() {
        XCTAssertEqual((permuteUnique([1,1,2])), [
            [1,1,2],
            [1,2,1],
            [2,1,1]
        ])
        XCTAssertEqual(permuteUnique([]), [[]])
        XCTAssertEqual(permuteUnique([1,1,1]), [[1,1,1]])
        XCTAssertEqual(permuteUnique([2,2,1,1]), [[1,1,2,2],[1,2,1,2],[1,2,2,1],[2,1,1,2],[2,1,2,1],[2,2,1,1]])
    }
    
    func test48() {
        var matrix = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        rotate(&matrix)
        XCTAssertEqual(matrix, [
            [7,4,1],
            [8,5,2],
            [9,6,3]
        ])
        
        matrix = [
            [ 5, 1, 9,11],
            [ 2, 4, 8,10],
            [13, 3, 6, 7],
            [15,14,12,16]
        ]
        rotate(&matrix)
        XCTAssertEqual(matrix,[
            [15,13, 2, 5],
            [14, 3, 4, 1],
            [12, 6, 8, 9],
            [16, 7,10,11]
        ])
    }
    
    func test50() {
        XCTAssertEqual(myPow(2.00000, 10), 1024.00000)
        XCTAssertEqual(myPow(2.10000, 3), 9.26100, accuracy: 0.001)
        
        
        XCTAssertEqual(myPow(2.00000, -2), 0.25000)
    }
    
    func test53() {
        XCTAssertEqual(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)
    }
    
    func test66() {
        XCTAssertEqual(plusOne([1,2,3]), [1,2,4])
        XCTAssertEqual(plusOne([4,3,2,1]), [4,3,2,2])
        XCTAssertEqual(plusOne([0]), [1])
        XCTAssertEqual(plusOne([9]), [1,0]) 
    }
    
    func test67() {
        XCTAssertEqual(addBinary("11", "1"), "100")
        XCTAssertEqual(addBinary("1010", "1011"), "10101")
    }
    
    func test69() {
        XCTAssertEqual(mySqrt3(4), 2)
        XCTAssertEqual(mySqrt3(8), 2)
        XCTAssertEqual(mySqrt3(1), 1)
        XCTAssertEqual(mySqrt3(0), 0)
    }
    
    func test70() {
        XCTAssertEqual(climbStairs(2), 2)
        XCTAssertEqual(climbStairs(3), 3)
        XCTAssertEqual(climbStairs(4), 5)
    }
    
    func test189() {
        var a = [1,2,3,4,5,6,7]
        rotate(&a, 3)
        XCTAssertEqual(a, [5, 6, 7, 1, 2, 3, 4])
        
        a = [-1,-100,3,99]
        rotate(&a, 2)
        XCTAssertEqual(a, [3,99,-1,-100])
    }
    
    func test796() {
        XCTAssertTrue(rotateString("abcde", "abcde"))
        XCTAssertFalse(rotateString("abcde", "abced"))
        XCTAssertTrue(rotateString("", ""))
    }
}
