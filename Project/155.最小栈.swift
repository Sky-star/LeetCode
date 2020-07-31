/*
 * @lc app=leetcode.cn id=155 lang=swift
 *
 * [155] 最小栈
 */

// @lc code=start

class MinStack {

    private var stack: [Int]
    private var minStack: [Int]
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        let last = minStack.isEmpty ? Int.max : minStack.last!
        minStack.append(min(x,last))
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
// @lc code=end

