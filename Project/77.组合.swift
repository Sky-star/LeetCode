/*
 * @lc app=leetcode.cn id=77 lang=swift
 *
 * [77] 组合
 */

// @lc code=start
class Solution {
    // var res = [[Int]]()
    // var n = 0
    // var k = 0
    // func combine(_ n: Int, _ k: Int) -> [[Int]] {
    //     //回溯
    //     self.n = n
    //     self.k = k
    //     var arr = [Int]()
    //     backstrack(1, &arr)

    //     return res
    // }

    
    // func backstrack(_ first: Int, _ curr: inout [Int]) {
    //     if curr.count == k {
    //         res.append(Array(curr))
    //     }

    //     for i in first ..< n + 1 {
    //         curr.append(i)

    //         backstrack(i + 1, &curr)

    //         curr.removeLast()
    //     }
    // }

    //字典序(二进制排序)组合
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var nums = [Int]()
        for i in 1..<k+1 {
        nums.append(i)
        }

        nums.append(n + 1)

        var res = [[Int]]()
        var j = 0

        while j < k {
            res.append(Array(nums[0..<k]))

            j = 0

            while j < k && nums[j + 1] == nums[j] + 1 {
                nums[j] = j + 1
                j += 1
            }

            nums[j] += 1
        }


        return res

    }
    
}
// @lc code=end

