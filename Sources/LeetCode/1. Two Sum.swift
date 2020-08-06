

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // a mapping from nums to index
    var dict = [Int: Int]()
    for (index, n) in nums.enumerated() {
        if let j = dict[target - n] {
            return [j, index]
        }
        dict[n] = index
    }
    return []
}
