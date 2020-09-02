/*
 * @lc app=leetcode.cn id=51 lang=swift
 *
 * [51] N皇后
 */

// @lc code=start
class Solution {
    var cols = Set<Int>()
    var pie  = Set<Int>()
    var na   = Set<Int>()
    var res  = [[String]]()
    
    func solveNQueens(_ n: Int) -> [[String]] {
        if n < 1 {
            return [[String]]()
        }
                
        backtrack(n, 0, [String]())
        
        return generateResult(n)
    }
    
    func backtrack(_ n: Int, _ row: Int, _ currentState: [String]) {
        if row >= n {
            self.res.append(currentState)
            return
        }
        
        for col in 0 ..< n {
            if self.cols.contains(col) || self.pie.contains(row + col) || self.na.contains(row - col) {
                continue
            }
            
            self.cols.insert(col)
            self.pie.insert(col + row)
            self.na.insert(row - col)
                                                
            backtrack(n, row + 1, currentState + [String(col)])
            
            self.cols.remove(col)
            self.pie.remove(row + col)
            self.na.remove(row - col)
        }
    }
    
    func generateResult(_ n: Int) -> [[String]] {
        var board = [[String]]()
                
        for res in self.res {
            var temp = [String]()
            for i in res {
                let leftdot = String(repeating: ".", count: Int(i)!)
                let rightdot = String(repeating: ".", count: n - Int(i)! - 1)
                temp.append(leftdot + "Q" + rightdot)
            }
            
            board.append(temp)
        }
                
        return board
    }
}

// @lc code=end

