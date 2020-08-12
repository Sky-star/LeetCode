/*
 * @lc app=leetcode.cn id=49 lang=swift
 *
 * [49] 字母异位词分组
 */

// @lc code=start
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        //暴力解法
        var dict = [String : [String]]()
        for s in strs {
            let sort_s = String(s.sorted())
            if dict.keys.contains(sort_s) == false {
                dict[sort_s] = [String]()
            }
            
            dict[sort_s]?.append(s)
        }
            
        return Array(dict.values)
    }
}
// @lc code=end

