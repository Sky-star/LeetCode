/*
 * @lc app=leetcode.cn id=145 lang=swift
 *
 * [145] 二叉树的后序遍历
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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let item = root else {
            return []
        }

        var res = [Int]()
        res.append(contentsOf:postorderTraversal(item.left))
        res.append(contentsOf:postorderTraversal(item.right))
        res.append(item.val)

        return res
    }
}
// @lc code=end

