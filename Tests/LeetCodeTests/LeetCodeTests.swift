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
            XCTAssertEqual(ary.binarySearch(i) , i-1)
        }
        ary = [1]
        XCTAssertEqual(ary.binarySearch(10), nil)
        XCTAssertEqual(ary.binarySearch(0), nil)
        XCTAssertEqual(ary.binarySearch(1), 0)
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
