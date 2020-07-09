//
//  70_爬楼梯.swift
//  algorithm.swift
//
//  Created by yaoning on 7/9/20.
//  Copyright © 2020 yaoning. All rights reserved.
//
//假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
//
//每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
//
//注意：给定 n 是一个正整数。
//
//示例 1：
//
//输入： 2
//输出： 2
//解释： 有两种方法可以爬到楼顶。
//1.  1 阶 + 1 阶
//2.  2 阶
//示例 2：
//
//输入： 3
//输出： 3
//解释： 有三种方法可以爬到楼顶。
//1.  1 阶 + 1 阶 + 1 阶
//2.  1 阶 + 2 阶
//3.  2 阶 + 1 阶
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/climbing-stairs
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 状态转移方程

import Foundation

class Solution70 {
    func climbStairs(_ n: Int) -> Int {
        if n < 2 {
            return 1
        }
        var dp: [Int] = Array<Int>(repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }

    func climbStairs2(_ n: Int) -> Int {
        var p = 0
        var q = 0
        var res = 1
        for _ in 1..<n {
            p = q
            q = res
            res = p + q
        }
        return res
    }

    static func test() {
        let s = Solution70()
        let res = s.climbStairs(1)
        print("Solution70 res: \(res)")
    }

}
