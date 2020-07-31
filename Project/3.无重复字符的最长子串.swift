/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        //暴力解法 遇到相同的则从第一个重复后的下一位开始查找
        // var maxLength = 0
        // var countLength = 0
        // var index = s.startIndex

        // var dict = [Character:String.Index]()
        
        // while index < s.endIndex {
            
        //     if let resIndex = dict[s[index]] {
        //         countLength = 0
        //         index = s.index(after: resIndex)
        //         dict.removeAll()
        //     }
            
        //     countLength += 1
            
        //     maxLength = max(maxLength, countLength)
            
        //     dict[s[index]] = index
            
        //     index = s.index(after: index)
                    
        // }

        // return maxLength

        //滑动窗口
        var maxLen = 0, startIdx = 0, charToPos = [Character: Int]()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            if let pos = charToPos[char] {
                startIdx = max(startIdx, pos)
            }
            
            // update to next valid position
            charToPos[char] = i + 1
            maxLen = max(maxLen, i - startIdx + 1)
        }
        
        return maxLen
    }
}
// @lc code=end

