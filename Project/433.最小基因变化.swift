/*
 * @lc app=leetcode.cn id=433 lang=swift
 *
 * [433] 最小基因变化
 */

// @lc code=start
class Solution {
    func minMutation(_ start: String, _ end: String, _ bank: [String]) -> Int {
    
        if start == end { return 0 }
        
        var bankSet = Set<String>()
        
        for b in bank {
            bankSet.insert(b)
        }
        
        let charSet: [Character] = ["A","C","T","G"]
        
        var level = 0
        
        var visited = Set<String>()
        
        var queue = [start]
        
        visited.insert(start)
        
        while !queue.isEmpty {
            var count = queue.count
            while count > 0 {
                count -= 1
                let curr = queue.removeFirst()
                
                if curr == end {
                    return level
                }
                
                var currArray = curr.map{ $0 }
                
                for i in 0..<currArray.count {
                    let old = currArray[i]
                    for c in charSet {
                        currArray[i] = c
                        let next = String(currArray)
                        if !visited.contains(next) && bankSet.contains(next) {
                            visited.insert(next)
                            queue.append(next)
                        }
                    }
                    
                    currArray[i] = old
                }
            }
            
            level += 1
            
        }
        
        return -1
    }
}
// @lc code=end

