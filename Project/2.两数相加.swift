/*
 * @lc app=leetcode.cn id=2 lang=swift
 *
 * [2] 两数相加
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var curl1 = l1
        var curl2 = l2
        var resultNode: ListNode? = ListNode(0)
        var currentNode = resultNode
        var jin = 0

        while curl1 != nil || curl2 != nil || jin != 0 {
            let result = (curl1?.val ?? 0) + (curl2?.val ?? 0) + jin            

            currentNode?.next = ListNode(result % 10)

            currentNode = currentNode?.next

            curl1 = curl1?.next
            curl2 = curl2?.next

            jin = result >= 10 ? 1 : 0

        }

        return resultNode?.next
    }
}
// @lc code=end

