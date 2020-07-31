/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 旋转数组
 */

// @lc code=start
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
         var a = nums
    
    for i in 0..<nums.count {
        a[(i+k) % nums.count] = nums[i]
    }
    
    nums = a

    }
}
// @lc code=end

