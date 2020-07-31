/*
 * @lc app=leetcode.cn id=141 lang=swift
 *
 * [141] 环形链表
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
    func hasCycle(_ head: ListNode?) -> Bool {
          if (head == nil || head?.next == nil) {
        return false;
    }
            var slowNode:ListNode? = head
    var fastNode:ListNode? = head?.next
    
    
    while slowNode?.val != fastNode?.val {
        
        if fastNode == nil || fastNode?.next == nil {
            return false
        }
        
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
    }
    
    return true
    }
}
// @lc code=end

