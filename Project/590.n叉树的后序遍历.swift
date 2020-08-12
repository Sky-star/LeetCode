/*
 * @lc app=leetcode.cn id=590 lang=swift
 *
 * [590] N叉树的后序遍历
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
    // var res = [Int]()
    func postorder(_ root: Node?) -> [Int] {
        //递归
    	// guard let item = root else {
        //     return []
        // }

        // for node in item.children {
        //     postorder(node)
        // }

        // res.append(item.val)

        // return res

        //迭代
        guard let item = root else {
            return []
        }
        var res = [Int]()
        var stack = [item]

        while !stack.isEmpty {
            let current = stack.removeLast()
            res.insert(current.val, at:0)
            for child in current.children {
                if child != nil {
                    stack.append(child)
                }
            }
        }

        return res

    }
}
// @lc code=end

