/*
 * @lc app=leetcode.cn id=25 lang=swift
 *
 * [25] K 个一组翻转链表
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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
            let dummyNode:ListNode? = ListNode(0)
    dummyNode?.next = head
    
    var preNode:ListNode? = dummyNode
    var endNode:ListNode? = dummyNode
    
    while endNode?.next != nil {
        
        for _ in 0..<k {
            endNode = endNode?.next
        }
        
        if endNode == nil {
            break
        }
        
        let start = preNode?.next
        let endNext = endNode?.next
        endNode?.next = nil
        preNode?.next = reverseList(start)
        start?.next = endNext
        preNode = start
        endNode = preNode
        
    }
    
    return dummyNode?.next
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
   
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

