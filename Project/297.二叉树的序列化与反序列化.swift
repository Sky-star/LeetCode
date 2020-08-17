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
        return reserialize(root, "")
    }

    func reserialize(_ root: TreeNode?, _ string: String) -> String {
        var result = string
        if let item = root {
            result += String(item.val) + ","
            result = reserialize(item.left,result)
            result = reserialize(item.right,result)
        }else {
            result += "None,"
        }

        return result
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        print(data)
        if data.isEmpty {
            return nil
        }

        let arr = data.split(separator: ",")

        for str in arr {
            
        }
        
        print(arr)

        return nil
    }
}

// Your Codec object will be instantiated and called as such:
// var codec = Codec()
// codec.deserialize(codec.serialize(root))
// @lc code=end

