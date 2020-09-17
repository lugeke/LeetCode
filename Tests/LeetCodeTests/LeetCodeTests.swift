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
    
    func test88() {
        var nums1 = [1,2,3,0,0,0]
        merge(&nums1, 3, [2,5,6], 3)
        XCTAssertEqual(nums1, [1,2,2,3,5,6])
        
        nums1 = [1,2,3,0,0,0,0]
        merge(&nums1, 3, [0,2,5,6], 4)
        XCTAssertEqual(nums1, [0,1,2,2,3,5,6])
    }
    
    func test100() {
        var p = TreeNode(1, .init(2), .init(3))
        var q = TreeNode(1, .init(2), .init(3))
        
        XCTAssertTrue(isSameTree(p, q))
        
        p = TreeNode(1, .init(2), nil)
        q = TreeNode(1, nil, .init(2))
        XCTAssertFalse(isSameTree(p, q))
    }
    
    func test101() {
        var tree = TreeNode(1, .init(2, .init(3), .init(4)), .init(2, .init(4), .init(3)))
        XCTAssertTrue(isSymmetric(tree))
        
        tree = TreeNode(1, .init(2, nil, .init(3)), .init(2, nil, .init(3)))
        XCTAssertFalse(isSymmetric(tree))
        
        XCTAssertTrue(isSymmetric(nil))
    }
    
    func test107() {
        let tree = TreeNode(3, .init(9), .init(20, .init(15), .init(7)))
        XCTAssertEqual(levelOrderBottom(tree), [
            [15,7],
            [9,20],
            [3]
          ])
        
       
    }
    
    func test110() {
        var tree = TreeNode(3, .init(9), .init(20, .init(15), .init(7)))
        XCTAssertTrue(isBalanced(tree))
        
        tree = TreeNode(1, .init(2, .init(3, .init(4), .init(4)), .init(3)), .init(2))
        XCTAssertFalse(isBalanced(tree))
    }
    
    func test111() {
        var tree = TreeNode(3, .init(9), .init(20, .init(15), .init(7)))
        XCTAssertEqual(minDepth(tree), 2)
        
        XCTAssertEqual(minDepth(nil), 0)
        
        tree = TreeNode(10)
        XCTAssertEqual(minDepth(tree), 1)
    }
    
    func test118() {
        XCTAssertEqual(generate(5), [
            [1],
           [1,1],
          [1,2,1],
         [1,3,3,1],
        [1,4,6,4,1]
       ])
        
        XCTAssertEqual(generate(0), [])
        
        XCTAssertEqual(generate(1), [
            [1],
       ])
    }
    
    func test121() {
        XCTAssertEqual(maxProfit([7,1,5,3,6,4]), 5)
        XCTAssertEqual(maxProfit([7,6,4,3,1]), 0)
    }
    
    func test125() {
        XCTAssertTrue(isPalindrome("A man, a plan, a canal: Panama"))
        XCTAssertFalse(isPalindrome("race a car"))
        XCTAssertTrue(isPalindrome(""))
    }
    
    func test136() {
        XCTAssertEqual(singleNumber([2,2,1]), 1)
        XCTAssertEqual(singleNumber([4,1,2,1,2]), 4)
    }
    
    func test189() {
        var a = [1,2,3,4,5,6,7]
        rotate(&a, 3)
        XCTAssertEqual(a, [5, 6, 7, 1, 2, 3, 4])
        
        a = [-1,-100,3,99]
        rotate(&a, 2)
        XCTAssertEqual(a, [3,99,-1,-100])
    }
    
    func test141() {
        var list = ListNode(1)
        XCTAssertFalse(hasCycle(list))
        
        let n2 = ListNode(2, list)
        list.next = n2
        XCTAssertTrue(hasCycle(list))
        
        let n4 = ListNode(-4)
        n4.next = list
        list = ListNode(3, .init(2, .init(0, n4)))
        XCTAssertTrue(hasCycle(list))
    }
    
    func test169() {
        XCTAssertEqual(majorityElement([3,2,3]), 3)
        XCTAssertEqual(majorityElement([2,2,1,1,1,2,2]), 2)
    }
    
    func test171() {
        XCTAssertEqual(titleToNumber("A"), 1)
        XCTAssertEqual(titleToNumber("AB"), 28)
        XCTAssertEqual(titleToNumber("ZY"), 701)
    }
    
    func test172() {
        XCTAssertEqual(trailingZeroes(3), 0)
        XCTAssertEqual(trailingZeroes(5), 1)
    }
    
    func test198() {
        XCTAssertEqual(rob([1,2,3,1]), 4)
        XCTAssertEqual(rob([2,7,9,3,1]), 12)
        XCTAssertEqual(rob([]), 0)
        XCTAssertEqual(rob([1]), 1)
        XCTAssertEqual(rob([2,1]), 2)
    }
    
    func test204() {
        XCTAssertEqual(countPrimes(10), 4)
        XCTAssertEqual(countPrimes(11), 4)
        XCTAssertEqual(countPrimes(1), 0)
        XCTAssertEqual(countPrimes(2), 0)
    }
    
    func test217() {
        XCTAssertTrue(containsDuplicate([1,2,3,1]))
        XCTAssertFalse(containsDuplicate([1,2,3,4]))
        XCTAssertTrue(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
    }
    
    func test226() {
        XCTAssertEqual(invertTree(TreeNode(ary: [4,2,7,1,3,6,9])!),
                       TreeNode(ary: [4,7,2,9,6,3,1])!)
        XCTAssertNil(invertTree(nil))
    }
    
    func test231() {
        XCTAssertTrue(isPowerOfTwo(1))
        XCTAssertTrue(isPowerOfTwo(16))
        XCTAssertFalse(isPowerOfTwo(0))
        XCTAssertFalse(isPowerOfTwo(6))
    }
    
    func test235() {
        let root = TreeNode(ary: [6,2,8,0,4,7,9,nil,nil,3,5])!
        var lca = lowestCommonAncestorBST(root, root.left, root.right)
        XCTAssertEqual(lca?.val, root.val)
        
        lca = lowestCommonAncestorBST(root, root.left, root.left?.right)
        XCTAssertEqual(lca?.val, root.left?.val)
    }
    
    func test236() {
        let root = TreeNode(ary: [3,5,1,6,2,0,8,nil,nil,7,4])!
        var lca = lowestCommonAncestor(root, root.left, root.right)
        XCTAssertEqual(lca?.val, root.val)
        
        lca = lowestCommonAncestor(root, root.left, root.left?.right?.right)
        XCTAssertEqual(lca?.val, root.left?.val)
    }
    
    func test242() {
        XCTAssertTrue(isAnagram("anagram", "nagaram"))
        XCTAssertFalse(isAnagram("rat", "car"))
    }
    
    func test258() {
        XCTAssertEqual(addDigits(38), 2)
        XCTAssertEqual(addDigits(0), 0)
        XCTAssertEqual(addDigits(123), 6)
    }
    
    func test263() {
        XCTAssertTrue(isUgly(6))
        XCTAssertTrue(isUgly(8))
        XCTAssertTrue(isUgly(1))
        XCTAssertFalse(isUgly(14))
        XCTAssertFalse(isUgly(0))
    }
    
    func test264() {
        XCTAssertEqual(nthUglyNumber(1), 1)
        XCTAssertEqual(nthUglyNumber(10), 12)
    }
    
    func test796() {
        XCTAssertTrue(rotateString("abcde", "abcde"))
        XCTAssertFalse(rotateString("abcde", "abced"))
        XCTAssertTrue(rotateString("", ""))
    }
}
