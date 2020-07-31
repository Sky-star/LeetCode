/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    func climbStairs(_ n: Int) -> Int {
            if n <= 2 {
        return n
    }

    var f1 = 1
    var f2 = 2
    var f3 = 3
    
    for _ in 3...n {
        f3 = f1 + f2
        f1 = f2
        f2 = f3
    }
  
    return f3
    }
}
// @lc code=end

