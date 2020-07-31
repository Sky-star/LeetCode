/*
 * @lc app=leetcode.cn id=88 lang=swift
 *
 * [88] 合并两个有序数组
 */

// @lc code=start
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            for index in 0 ..< nums2.count {
        nums1[m + index] = nums2[index]
    }
    
    nums1.sort()
    }
}
// @lc code=end

