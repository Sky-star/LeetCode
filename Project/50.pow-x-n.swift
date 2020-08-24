/*
 * @lc app=leetcode.cn id=50 lang=swift
 *
 * [50] Pow(x, n)
 */

// @lc code=start
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        //暴力算法 大数必然超时
        // let num: Double = n > 0 ? x : 1 / x
        // var res: Double = 1
        
        // for _ in 0 ..< abs(n) {
        //     res *= num
        // }
        
        // return res

        //分治递归算法
        return n > 0 ? quickMul(x,n) : Double(1) / quickMul(x, -n)
    }

    
    func quickMul(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return Double(1)
        }

        let res = quickMul(x, n / 2)

        return n % 2 == 0 ? res * res : res * res * x
    }
    
}
// @lc code=end

