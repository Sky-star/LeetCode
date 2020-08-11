/*
 * @lc app=leetcode.cn id=242 lang=swift
 *
 * [242] 有效的字母异位词
 */

// @lc code=start
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        //暴力解法，对字符串进行排序，如果相等则为true
        // let sort_s = s.sorted()
        // let sort_t = t.sorted()
        
        // return sort_s == sort_t
        if s.count != t.count {
            return false
        }
        
        var dict = [Character : Int]()
        
        for char in s {
            let count = dict[char] ?? 0
            dict[char] = count + 1
        }
        
        for char in t {
            let count = dict[char] ?? 0
            dict[char] = count - 1
        }

        guard dict.values.first(where: {$0 != 0}) == nil else { return false }
        
        return true
    }
}
// @lc code=end

