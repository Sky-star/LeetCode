/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
    
        let charDict:[Character:Character] = ["(":")","[":"]","{":"}"]
    
        var stack = [Character]()
    
        s.forEach { char in
        
            if let top = stack.first,char == charDict[top] {
                stack.remove(at: 0)
            }else {
                stack.insert(char, at: 0)
            }
        
        }
    
        return stack.isEmpty
    }
}
// @lc code=end

