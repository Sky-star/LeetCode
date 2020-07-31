/*
 * @lc app=leetcode.cn id=84 lang=swift
 *
 * [84] 柱状图中最大的矩形
 */

// @lc code=start
class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        //暴力解法 提交超时
        // if heights.isEmpty {
        //     return 0
        // }
        
        // var res = 0
        // for i in 0 ..< heights.count {
        //     var left = i
        //     let currentHeight = heights[i]
            
        //     while left > 0 && heights[left - 1] >= currentHeight {
        //         left -= 1
        //     }
            
        //     var right = i
        //     while right < heights.count - 1 && heights[right + 1] >= currentHeight {
        //         right += 1
        //     }
            
        //     let width = right - left + 1
            
        //     res = max(res, currentHeight * width)

        // }
        
        // return res

        //单调栈+哨兵
        if heights.isEmpty {
            return 0
        }

        if heights.count == 1 {
            return heights.first!
        }

        //增加哨兵值
        var newHeights = heights
        newHeights.insert(0, at: 0)
        newHeights.append(0)

        var stack = [0]
        var res = 0

        for i in 1 ..< newHeights.count {

            while newHeights[i] < newHeights[stack.last!] {
                let height = newHeights[stack.removeLast()]
                let width = i - stack.last! - 1
                res = max(res, height * width)
            }

            stack.append(i)
        }

        return res
    }
}
// @lc code=end

