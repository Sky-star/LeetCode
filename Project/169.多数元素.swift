/*
 * @lc app=leetcode.cn id=169 lang=swift
 *
 * [169] 多数元素
 */

// @lc code=start
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        //迭代
        // var dict = [Int: Int]()
        // var maxnum = Int.min
        
        // for num in nums {
            
        //     let count = dict[num] ?? 0
            
        //     dict[num] = count + 1
            
        //     maxnum = max(maxnum, dict[num]!)
        // }
            
        // let key = dict.filter { element -> Bool in
        //     return element.value == maxnum
        //     }.first?.key
        
        // return (maxnum > (nums.count / 2) ? key : 0)!

        //分治
        return majorityElementRec(nums, 0, nums.count - 1)
    }

    func majorityElementRec(_ nums: [Int], _ low: Int, _ high: Int) -> Int {
        if low == high {
            return nums[low]
        }
        
        let mid = (high - low) / 2 + low
        let left = majorityElementRec(nums, low, mid)
        let right = majorityElementRec(nums, mid + 1, high)
        
        if left == right {
            return left
        }
        
        let leftCount = countInRange(nums, left, low, high)
        let rightCount = countInRange(nums, right, low, high)
        
        return leftCount > rightCount ? left : right
    }

    func countInRange(_ nums: [Int], _ num: Int, _ low: Int, _ high: Int) -> Int {
        var count = 0
        
        for i in low...high {
            if nums[i] == num {
                count += 1
            }
        }
        
        return count
    }
}
// @lc code=end

