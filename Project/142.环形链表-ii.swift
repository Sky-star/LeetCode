/*
 * @lc app=leetcode.cn id=142 lang=swift
 *
 * [142] 环形链表 II
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
    func detectCycle(_ head: ListNode?) -> ListNode? {
   var slowNode = head
    var fastNode = head
    
    repeat {
              if fastNode == nil || slowNode == nil {
                  return nil
              }
              fastNode = fastNode?.next?.next
              slowNode = slowNode?.next
    } while fastNode !== slowNode


    fastNode = head

    while slowNode !== fastNode {
        slowNode = slowNode?.next
        fastNode = fastNode?.next
    }


    return slowNode
    
    
    }
}
// @lc code=end

