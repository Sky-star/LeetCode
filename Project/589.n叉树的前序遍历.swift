/*
 * @lc app=leetcode.cn id=589 lang=swift
 *
 * [589] N叉树的前序遍历
 */

// @lc code=start
/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    var res = [Int]()
    func preorder(_ root: Node?) -> [Int] {
    	guard let item = root else {
            return []
        }

        res.append(item.val)

        for child in item.children {
            preorder(child)
        }

        return res
    }
}
// @lc code=end

