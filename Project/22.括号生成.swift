/*
 * @lc app=leetcode.cn id=22 lang=swift
 *
 * [22] 括号生成
 */

// @lc code=start
class Solution {
    var result = [String]()
    func generateParenthesis(_ n: Int) -> [String] {
    generate(0,0,n,"")
    return result
    }

    func generate(_ left: Int,_ right: Int,_ n: Int,_ s: String) {
        if left == n && right == n {
            result.append(s)
            return
        }

        
        if left < n {
            generate(left + 1, right, n, s + "(")
        }

        
        if left > right {
            generate(left, right + 1, n , s + ")")
        }
        
    }
}
// @lc code=end

