/*
 * @lc app=leetcode.cn id=206 lang=swift
 *
 * [206] 反转链表
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        //方法2 双指针法
        var curr:ListNode? = head
        var pre:ListNode? = nil
        while curr != nil {
            let temp = curr?.next
            curr?.next = pre
            pre = curr
            curr = temp
            
        }
        
        return pre
    }
}
// @lc code=end

