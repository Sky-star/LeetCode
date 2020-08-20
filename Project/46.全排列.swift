/*
 * @lc app=leetcode.cn id=46 lang=swift
 *
 * [46] 全排列
 */

// @lc code=start
class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var output = [Int]()
        
        output.append(contentsOf: nums)
        
        backtrack(nums.count, &output, &res, 0)
        
        return res
    }

    func backtrack(_ n: Int, _ output: inout [Int], _ res: inout [[Int]], _ first: Int) {
        if first == n {
            res.append(output)
        }
        
        for i in first ..< n {
            output.swapAt(first, i)
            
            backtrack(n, &output, &res, first + 1)
            
            output.swapAt(first, i)
        }
    }
}
// @lc code=end

