/*
 * @lc app=leetcode.cn id=98 lang=swift
 *
 * [98] 验证二叉搜索树
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
    func isValidBST(_ root: TreeNode?) -> Bool {
        //递归调用
        return generate(root,Int.min,Int.max)
        //中序遍历
        // var stack = [TreeNode?]()
        // var current = root
        // var inorder = Int.min

        // while current != nil || !stack.isEmpty {
        //     while current != nil {
        //         stack.append(current)
        //         current = current?.left
        //     }

        //     current = stack.removeLast()
        //     //中序遍历 一定是升序的，只需要判断当前节点是否大于上一个节点的值即可
        //     if current!.val <= inorder{
        //         return false
        //     }
        //     inorder = current!.val
        //     current = current?.right
        // }

        // return true
    }

    func generate(_ node: TreeNode?,_ lower: Int,_ upper: Int) -> Bool {
        guard let item = node else {
            return true
        }
        
        if item.val <= lower || item.val >= upper {
            return false
        }

        if !generate(node?.right, item.val, upper) {
            return false;
        }
        
        if !generate(node?.left, lower, item.val) {
            return false;
        }

        return true

    }

}
// @lc code=end

