/*
 * @lc app=leetcode.cn id=349 lang=swift
 *
 * [349] 两个数组的交集
 */

// @lc code=start
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let minArray = nums1.count < nums2.count ? nums1 : nums2
        let maxArray = nums1.count > nums2.count ? nums1.sorted() : nums2.sorted()
        
        var result = Set<Int>()
        for key in minArray {
            if let resultKey = binarySearch(maxArray, key: key, range: 0 ..< maxArray.count) {
                result.insert(maxArray[resultKey])
            }
        }
        return Array(result)
    }

    func binarySearch<T: Comparable>(_ a: [T], key: T,range: Range<Int>) -> Int? {
        //递归
        if range.lowerBound >= range.upperBound {
            return nil
        } else {
            let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
            
            if a[midIndex] > key {
                return binarySearch(a, key: key,range: range.lowerBound ..< midIndex)
            }else if a[midIndex] < key {
                return binarySearch(a, key: key,range: midIndex + 1 ..< range.upperBound)
            }else {
                return midIndex
            }
        }
    }
}
// @lc code=end

