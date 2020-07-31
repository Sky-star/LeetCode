/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除排序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
     if nums.isEmpty {
        return 0
    }
    
    var index = 0
    var nextIndex = 1
    
    while nextIndex < nums.count {
        if nums[index] != nums[nextIndex] {
            if nextIndex - index > 1 {
                nums[index +  1] = nums[nextIndex]
            }
            
            index += 1
        }
        
        nextIndex += 1
    }
        
    
    return index + 1
    }
}
// @lc code=end

