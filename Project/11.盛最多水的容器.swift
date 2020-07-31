/*
 * @lc app=leetcode.cn id=11 lang=swift
 *
 * [11] 盛最多水的容器
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var maxArea = 0
        while i != j {
            let area = min(height[i],height[j]) * (j - i)
           
            maxArea = max(maxArea,area)

            if height[i] < height[j] {
                i = i + 1
            }else {
                j = j - 1
            }

        }

        return maxArea

    }
}
// @lc code=end

