/*
 * @lc app=leetcode.cn id=94 lang=swift
 *
 * [94] 二叉树的中序遍历
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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        //递归算法
        // guard let item = root else{
        //     return []
        // }
        // var res = [Int]()
        // res.append(contentsOf: inorderTraversal(item.left))
        // res.append(item.val)
        // res.append(contentsOf: inorderTraversal(item.right))
        // return res

        //栈
        var res = [Int]()
        var stack = [TreeNode?]()
        var current = root
        while current != nil || !stack.isEmpty {
            while current != nil {
                stack.append(current)
                current = current?.left
            }
            current = stack.removeLast()
            res.append(current!.val)
            current = current?.right
        }

        return res
    }
}
// @lc code=end

