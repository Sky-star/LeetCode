/*
 * @lc app=leetcode.cn id=47 lang=swift
 *
 * [47] 全排列 II
 */

// @lc code=start
class Solution {

    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        if nums.isEmpty { return res }
        var used = Array(repeatElement(false, count: nums.count))
        var list = [Int]()
        
        backtrack(nums.sorted(), &used, &res, &list)
        
        return res
        
    }

    func backtrack(_ nums: [Int], _ used: inout [Bool], _ res: inout [[Int]], _ list: inout [Int]) {
        if list.count == nums.count {
            res.append(list)
            return
        }
        
        for i in 0..<nums.count {
            if used[i] { continue }
            
            if i > 0 && nums[i-1] == nums[i] && !used[i-1] {
                continue
            }
            
            used[i] = true
            
            list.append(nums[i])
            
            backtrack(nums, &used, &res, &list)
            
            used[i] = false
            
            list.removeLast()
        }
    }
}
// @lc code=end

