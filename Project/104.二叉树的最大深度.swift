/*
 * @lc app=leetcode.cn id=104 lang=swift
 *
 * [104] 二叉树的最大深度
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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let item = root else {
            return 0
        }

        let lhigh = maxDepth(item.left)
        let rhigh = maxDepth(item.right)

        return max(lhigh,rhigh) + 1
    }
}
// @lc code=end

