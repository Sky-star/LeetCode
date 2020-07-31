/*
 * @lc app=leetcode.cn id=15 lang=swift
 *
 * [15] 三数之和
 */

// @lc code=start
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
         if nums.count < 3 {
        return []
    }
    
    
    var sum = [[Int]]()
    
    let sortnums = nums.sorted()
    

    for (index,value) in sortnums.enumerated() {
        
        if index > 0 && sortnums[index] == sortnums[index - 1] {
            continue
        }
        
        var i = index + 1
        var j = sortnums.endIndex - 1

        while i < j {
            if sortnums[i] + sortnums[j] < -value {
                i += 1
            } else if sortnums[i] + sortnums[j] > -value {
                j -= 1
            } else {
                sum.append([value,sortnums[i],sortnums[j]])
                
                while i < j && sortnums[i] == sortnums[i + 1] {
                    i += 1
                }
                
                while i < j && sortnums[j] == sortnums[j - 1] {
                    j -= 1
                }
                
                i += 1
                j -= 1
            }
        }
    }
        
    return sum
        
    }
}
// @lc code=end

