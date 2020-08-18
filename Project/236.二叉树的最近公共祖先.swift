/*
 * @lc app=leetcode.cn id=236 lang=swift
 *
 * [236] 二叉树的最近公共祖先
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
    var ans: TreeNode?
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        bfs(root,p,q)
        return ans
    }

    
    func bfs(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let item = root else {
            return false
        }

        let lson = bfs(item.left,p,q)
        let rson = bfs(item.right,p,q)

        if (lson && rson) || ((item.val == p!.val || item.val == q!.val) && (lson || rson)) {
            ans = item
        }

        return lson || rson || (item.val == p!.val || item.val == q!.val)
    }
    
}
// @lc code=end

