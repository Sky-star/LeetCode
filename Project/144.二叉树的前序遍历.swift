/*
 * @lc app=leetcode.cn id=144 lang=swift
 *
 * [144] 二叉树的前序遍历
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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let item = root else {
            return []
        }

        var res = [Int]()
        res.append(item.val)
        res.append(contentsOf:preorderTraversal(item.left))
        res.append(contentsOf:preorderTraversal(item.right))

        return res
    }
}
// @lc code=end

