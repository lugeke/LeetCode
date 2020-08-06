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
    
    
    func test32() {
        XCTAssertEqual(longestValidParentheses("(()"), 2)
        XCTAssertEqual(longestValidParentheses(")()())"), 4)
        XCTAssertEqual(longestValidParentheses(")()())(((())()))"), 10)
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
