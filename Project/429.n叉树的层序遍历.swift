/*
 * @lc app=leetcode.cn id=429 lang=swift
 *
 * [429] N叉树的层序遍历
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
    //递归 深度优先搜索
    // var result = [[Int]]()
    func levelOrder(_ root: Node?) -> [[Int]] {
    //     guard let item = root else {
    //         return []
    //     }

    //    traverseNode(item,0)

    //    return result
        //广度优先搜索
        guard let item = root else {
            return []
        }

        var result = [[Int]]()
        var queue = [item]

        while !queue.isEmpty {
            var level = [Int]()
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                level.append(node.val)
                queue.append(contentsOf:node.children)
            }

            result.append(level)
        }

        return result
    }

    // func traverseNode(_ node: Node, _ level: Int) {
    //     if (result.count <= level) {
    //         result.append([Int]())
    //     }

    //     result[level].append(node.val)
    //     for child in node.children {
    //         traverseNode(child, level + 1);
    //     }
    // }
}
// @lc code=end

