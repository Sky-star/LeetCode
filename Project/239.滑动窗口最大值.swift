/*
 * @lc app=leetcode.cn id=239 lang=swift
 *
 * [239] 滑动窗口最大值
 */

// @lc code=start
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
            var maxIdx = [Int]()
        var res = [Int]()
        
        for i in 0..<nums.count {
            while maxIdx.count > 0 && nums[maxIdx.last!] < nums[i] {
                maxIdx.removeLast()
            }
            
            maxIdx.append(i)
            
            if i >= k - 1 {
                //主要是为了判断当前最开始那个大数的index是不是在当前窗口index范围
           //也可以 maxIdx.first! + k <= i
                if maxIdx.first! + k == i {
                    maxIdx.removeFirst()//nums=[1,-1]，k=1会进来
                }
                
                res.append(nums[maxIdx.first!])
            }
        }
        
        return res
    }
}
// @lc code=end

