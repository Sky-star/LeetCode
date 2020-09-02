/*
 * @lc app=leetcode.cn id=102 lang=swift
 *
 * [102] 二叉树的层序遍历
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    //BFS
    // func levelOrder(_ root: TreeNode?) -> [[Int]] {
    //     //BFS
    //     guard let root = root else { return [[Int]]() }
        
    //     var res = [[Int]]()
    //     var queue = [root]
        
    //     while !queue.isEmpty {
    //         res.append([Int]())
    //         for _ in 0 ..< queue.count {
    //             let node = queue.removeFirst()
    //             res[res.count - 1].append(node.val)
                
    //             if let left = node.left {
    //                 queue.append(left)
    //             }
                
    //             if let right = node.right {
    //                 queue.append(right)
    //             }
    //         }
            
    //     }
        
    //     return res
    // }

    //DFS
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        dfs(root, &res, 0)
        
        return res
    }
    

    func dfs(_ root: TreeNode?, _ res: inout [[Int]], _ level: Int) {
        
        guard let root = root else { return }
        
        if res.count == level {
            res.append([Int]())
        }
        
        res[level].append(root.val)
        
        dfs(root.left, &res, level + 1)
        dfs(root.right, &res, level + 1)
        
    }
}
// @lc code=end

