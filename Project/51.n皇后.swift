/*
 * @lc app=leetcode.cn id=51 lang=swift
 *
 * [51] N皇后
 */

// @lc code=start
class Solution {
    var cols = [Int]()
    var pie  = [Int]()
    var na   = [Int]()
    var res  = [[String]]()
    
    func solveNQueens(_ n: Int) -> [[String]] {
        if n < 1 {
            return [[String]]()
        }
        
        var cur = [String]()
        
        backtrack(n, 0, &cur)
        
        return generateResult(n)
    }
    
    func backtrack(_ n: Int, _ row: Int, _ currentState: inout [String]) {
        print(row)
        if row >= n {
            self.res.append(currentState)
            return
        }
        
        for col in 0 ..< n {
            if self.cols.contains(col) || self.pie.contains(row + col) || self.na.contains(row - col) {
                continue
            }
            
            self.cols.append(col)
            self.pie.append(col + row)
            self.na.append(row - col)
            
            currentState += [String(col)]
                        
            backtrack(n, row + 1, &currentState)
            
            self.cols.removeAll(where: {$0 == col})
            self.pie.removeAll(where: {$0 == (row + col)})
            self.na.removeAll(where: {$0 == (row - col)})
        }
    }
    
    func generateResult(_ n: Int) -> [[String]] {
        var board = [[String]]()
        
        print(self.res)
        
        return board
    }
}

let s = Solution()
s.solveNQueens(8)

// @lc code=end

