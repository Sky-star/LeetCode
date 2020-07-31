/*
 * @lc app=leetcode.cn id=283 lang=swift
 *
 * [283] 移动零
 */

// @lc code=start
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.isEmpty {
            return
        }
        var j = 0
        for (index, value) in nums.enumerated() {
            if value != 0 {
                let temp = nums[j]
                nums[j] = value
                nums[index] = temp
                j += 1
            }
        }
    }
}
// @lc code=end

