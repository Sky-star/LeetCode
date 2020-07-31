/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //暴力求解
        // for num1 in 0..<nums.count {
        //     for num2 in num1..<nums.count {
        //         if nums[num1] + nums[num2] == target && num2 > num1 {
        //             return [num1,num2]
        //         }
        //     }
        // }
        // return []

        //字典输出
        // var dict = [Int:Int]()

        // for (index,val) in nums.enumerated() {
        //     if let lastIndex = dict [target - val] {
        //         return [lastIndex, index]
        //     }

        //     dict[val] = index
        // }

        // return []

        //二分查找
        // let sortNums = nums.sorted()
        // var left = 0
        // var right = sortNums.count - 1

        // while left < right {
        //     let leftNum = sortNums[left]
        //     let rightNum = sortNums[right]
        //     let sum = leftNum + rightNum
        //     print(sum)
            
        //     if sum == target {
        //         return [nums.firstIndex(of: leftNum)! , nums.lastIndex(of: rightNum)!];
        //     }else if sum > target {
        //         right -= 1
        //     }else {
        //         left += 1
        //     }
        // }

        // return []
    }
}
// @lc code=end

