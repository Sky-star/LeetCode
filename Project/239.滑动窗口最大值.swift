/*
 * @lc app=leetcode.cn id=239 lang=swift
 *
 * [239] 滑动窗口最大值
 */

// @lc code=start
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var maxInt = [Int]()
        var maxRes = Int.min
        var stack = nums[0..<k]
        for val in nums[k..<nums.count] {
            
        }

        return maxInt
    }
}
// @lc code=end

