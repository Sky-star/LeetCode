/*
 * @lc app=leetcode.cn id=24 lang=swift
 *
 * [24] 两两交换链表中的节点
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
    func swapPairs(_ head: ListNode?) -> ListNode? {
           if head?.next == nil {
        return head
    }
    
    var preNode:ListNode? = nil
    var curNode:ListNode? = head
    var lastNode:ListNode? = nil
    
    
    while curNode != nil {

        if preNode == nil {
            preNode = curNode?.next
        }
        
        let nextNode = curNode?.next
        
        if nextNode == nil {
            lastNode?.next = curNode
            break
        }
        
        
        curNode?.next = nextNode?.next
        nextNode?.next = curNode
        lastNode?.next = nextNode
        
        lastNode = curNode
        curNode = curNode?.next
        
    }
    
    return preNode
    }
}
// @lc code=end

