/*
 * @lc app=leetcode.cn id=78 lang=swift
 *
 * [78] 子集
 */

// @lc code=start
class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        if nums.isEmpty { return res }

        var list = [Int]()

        dfs(nums,&res,&list,0)

        return res

    }

    func dfs(_ nums: [Int],_ res: inout [[Int]], _ list: inout [Int], _ index: Int) {
        //终止条件
        if index == nums.count {
            res.append(list)
            return
        }

        //当前逻辑
        dfs(nums,&res,&list,index + 1) //不选数
        list.append(nums[index])
        dfs(nums,&res,&list,index + 1) //选数

        //撤销状态
        list.removeLast()
    }
}
// @lc code=end

