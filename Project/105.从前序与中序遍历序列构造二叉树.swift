/*
 * @lc app=leetcode.cn id=105 lang=swift
 *
 * [105] 从前序与中序遍历序列构造二叉树
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

    //递归
    // var dict = [Int: Int]()
    // func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    //     // [3,9,20,15,7]
    //     // [9,3,15,20,7]
    //     let n = preorder.count

    //     for (index, num) in inorder.enumerated(){
    //         dict[num] = index
    //     }
        

    //     return rebuildTree(preorder, inorder, 0, n - 1, 0, n - 1)

    // }

    
    // func rebuildTree(_ preorder: [Int], _ inorder: [Int], _ preorderLeft: Int, _ preorderRight: Int, _ inorderLeft: Int, _ inorderRight: Int) -> TreeNode? {
    //     if preorderLeft > preorderRight {
    //         return nil
    //     }

    //     //获取其实根节点的位置
    //     let preorder_root = preorderLeft

    //     //获取根节点在inorder中的位置
    //     let inorder_root = dict[preorder[preorder_root]]!

    //     //创建根节点
    //     let root = TreeNode(preorder[preorder_root])

    //     //获取左子树的大小
    //     let left_subtree = inorder_root - inorderLeft
        
    //     //递归构造左子树，并且链接到根节点
    //     root.left = rebuildTree(preorder, inorder, preorderLeft + 1, preorderLeft + left_subtree, inorderLeft, inorder_root - 1)

    //     //递归构造右子树
    //     root.right = rebuildTree(preorder, inorder, preorderLeft + left_subtree + 1, preorderRight, inorder_root + 1, inorderRight)

    //     return root
    // }

    //迭代
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.isEmpty { return nil }
        
        let root = TreeNode(preorder[0])
        var stack = [root]
        var inorderIndex = 0
        
        for i in 1..<preorder.count {
            let preorderVal = preorder[i]
            var node = stack.last!
            
            if node.val != inorder[inorderIndex] {
                node.left = TreeNode(preorderVal)
                stack.append(node.left!)
            }else {
                while !stack.isEmpty && stack.last?.val == inorder[inorderIndex] {
                    node = stack.removeLast()
                    inorderIndex += 1
                }
                
                node.right = TreeNode(preorderVal)
                stack.append(node.right!)
            }
        }
        
        return root
    }
    
}


// @lc code=end

