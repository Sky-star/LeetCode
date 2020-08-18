/*
 * @lc app=leetcode.cn id=297 lang=swift
 *
 * [297] 二叉树的序列化与反序列化
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

class Codec {

    func serialize(_ root: TreeNode?) -> String {
        guard let root = root else {
            return "None,"
        }

        return String(root.val) + "," + serialize(root.left) + serialize(root.right)
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        var arr = data.split(separator: ",").map{ string in
            Int(String(string))
        }
        
        return redeserialize(&arr)
    }
    
    func redeserialize(_ data: inout [Int?]) -> TreeNode? {
        guard let val = data.removeFirst() else { return nil }
        
        let root = TreeNode(val)
        root.left = redeserialize(&data)
        root.right = redeserialize(&data)
        
        return root
    }
}

// Your Codec object will be instantiated and called as such:
// var codec = Codec()
// codec.deserialize(codec.serialize(root))
// @lc code=end

