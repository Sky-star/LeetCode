/*
 * @lc app=leetcode.cn id=1351 lang=swift
 *
 * [1351] 统计有序矩阵中的负数
 */

// @lc code=start
class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
    
        for a in grid {
            count += binarySearch(a, key: 0)
        } 
        return count
    }

    //二分查找
    func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int {
        //迭代
        var lowerBound = 0
        var upperBound = a.count - 1
        var pos = -1
        while lowerBound <= upperBound {
            //这么做是为了防止在32位机器上溢出
            let midIndex = lowerBound + (upperBound - lowerBound)  / 2

            if a[midIndex] >= key {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex - 1
                pos = midIndex
            }
        }
        
        return  pos == -1 ? 0 : a.count - pos

    }
}
// @lc code=end

