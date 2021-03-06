/*
 * @lc app=leetcode.cn id=226 lang=swift
 *
 * [226] 翻转二叉树
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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let item = root else {
            return nil
        }

        let tempNode = item.left
        item.left = item.right
        item.right = tempNode

        invertTree(item.left)
        invertTree(item.right)
        
        return item
    }
}
// @lc code=end

