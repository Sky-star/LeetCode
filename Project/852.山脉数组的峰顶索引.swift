/*
 * @lc app=leetcode.cn id=852 lang=swift
 *
 * [852] 山脉数组的峰顶索引
 */

// @lc code=start
class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var lowerBound = 0
        var upperBound = arr.count - 1
        var pos = -1
        while lowerBound <= upperBound {
            //这么做是为了防止在32位机器上溢出
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            
            if arr[midIndex] > arr[midIndex + 1] && arr[midIndex] > arr[midIndex - 1] {
                pos = midIndex
                break
            } else if arr[midIndex] < arr[midIndex + 1]  {
                lowerBound = midIndex + 1
            }else {
                upperBound = midIndex - 1
            }
        }
        
        return pos
    }
}
// @lc code=end

