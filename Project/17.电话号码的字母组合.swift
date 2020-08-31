/*
 * @lc app=leetcode.cn id=17 lang=swift
 *
 * [17] 电话号码的字母组合
 */

// @lc code=start
class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        var res = [String]()

        if digits.isEmpty {
            return res
        }
        
        let dict = ["2":"abc","3":"def","4":"ghi","5":"jkl","6":"mno","7":"pqrs","8":"tuv","9":"wxyz"]
        
        var str = ""
        
        letterCombinationsRec(dict, digits, &res, &str, 0)
        
        return res
        
    }

    func letterCombinationsRec(_ dict: [String: String], _ digits: String, _ res: inout [String], _ string: inout String, _ index: Int) {
        if index == digits.count {
            res.append(string)
            return
        }
        
        let strArr = Array(digits)
        
        let digit = strArr[index]
            
        let letter = dict[String(digit)]!
        
        for char in letter {
            
            string.append(char)
            
            letterCombinationsRec(dict, digits, &res, &string, index + 1)
            
            string.removeLast()
        }
    }
}
// @lc code=end

