/*
 * @lc app=leetcode.cn id=111 lang=swift
 *
 * [111] 二叉树的最小深度
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
    func minDepth(_ root: TreeNode?) -> Int {
        //递归法
        // guard let item = root else {
        //     return 0
        // }

        // let lhigh = minDepth(item.left)
        // let rhigh = minDepth(item.right)

        // if item.left == nil || item.right == nil {
        //     return lhigh + rhigh + 1
        // }
        

        // return min(lhigh,rhigh) + 1
        
        //深度优先搜索迭代
        guard let item = root else {
            return 0
        }

        var minDepth = Int.max
        var stack = [(item,1)]

        while !stack.isEmpty {
            let current = stack.removeLast()
            let node = current.0
            let depth = current.1

            if node.left == nil && node.right == nil {
                minDepth = min(minDepth,depth)
            }

            if node.left != nil {
                stack.append((node.left!, depth + 1))
            }

            if node.right != nil {
                stack.append((node.right!, depth + 1))
            }
        }

        return minDepth
    }
}
// @lc code=end

