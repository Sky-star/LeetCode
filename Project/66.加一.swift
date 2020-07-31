/*
 * @lc app=leetcode.cn id=66 lang=swift
 *
 * [66] 加一
 */

// @lc code=start
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
            var count = digits.count - 1
    var dig = digits
    
    for _ in 0..<digits.count {
        
        dig[count] += 1
        dig[count] %= 10
        
        if dig[count] != 0 {
            return dig
        }
        
        count -= 1
    }
    
    dig = Array(repeating: 0, count: digits.count + 1)
    dig[0] = 1
    
    return dig
    }
}
// @lc code=end

