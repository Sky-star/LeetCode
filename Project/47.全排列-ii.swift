/*
 * @lc app=leetcode.cn id=47 lang=swift
 *
 * [47] 全排列 II
 */

// @lc code=start
class Solution {

    func permuteUnique(_ nums: [Int]) -> [[Int]] {
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
            
            if first != i && output[first] == output[i] {
                continue
            }
            
            // print("first: \(first)")
            // print("i: \(i)")
            // print(output)
            
            output.swapAt(first, i)
            
            backtrack(n, &output, &res, first + 1)
            
            output.swapAt(first, i)
        }
    }
}
// @lc code=end

