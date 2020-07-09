//
//  300_最长上升子序列.swift
//  algorithm.swift
//
//  Created by yaoning on 7/7/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个无序的整数数组，找到其中最长上升子序列的长度。
//
//示例:
//
//输入: [10,9,2,5,3,7,101,18]
//输出: 4
//解释: 最长的上升子序列是 [2,3,7,101]，它的长度是 4。
//说明:
//
//可能会有多种最长上升子序列的组合，你只需要输出对应的长度即可。
//你算法的时间复杂度应该为 O(n2) 。
//进阶: 你能将算法的时间复杂度降低到 O(n log n) 吗?
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/longest-increasing-subsequence
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 状态转移方程 dp[i] = max(dp[j]) + 1
// 边界条件 nums[i] > nums[j] && 0 <= j < i
// 其中 nums[i] > nums[j] 保证上升 0 <= j < i 保证子序列

import Foundation

class Solution300 {

    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var dp: [Int] = Array<Int>(repeating: 0, count: nums.count)
        var maxAnswer = 1
        dp[0] = 1
        for i in 1..<nums.count {
            var maxValue = 0
            for j in 0..<i {
                if nums[i] > nums[j] {
                    maxValue = max(dp[j], maxValue)
                }
            }
            dp[i] = maxValue + 1
            maxAnswer = max(dp[i], maxAnswer)
        }
        return maxAnswer
    }

    static func test() {
        let s = Solution300()
        let res = s.lengthOfLIS([-2, -1])
        print("Solution300: \(res)")
    }
}
