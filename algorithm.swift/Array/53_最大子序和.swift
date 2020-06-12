//
//  53_最大子序和.swift
//  algorithm.swift
//
//  Created by yaoning on 6/5/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
//
//示例:
//
//输入: [-2,1,-3,4,-1,2,1,-5,4],
//输出: 6
//解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
//进阶:
//
//如果你已经实现复杂度为 O(n) 的解法，尝试使用更为精妙的分治法求解。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/maximum-subarray
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution53 {

    func maxSubArray(_ nums: [Int]) -> Int {
        var ans = nums[0]
        var sum = 0
        for num in nums {
            if sum > 0 {
                sum += num
                print("\(num) sum > 0 sumBefore: \(sum - num) sumAfter: \(sum)")
                print("*************")
            } else {
                print("\(num) sum <= 0 sumBefore: \(sum) sumAfter: \(num)")
                print("*************")
                sum = num
            }
            ans = max(sum, ans)
            print("\(num) ans = max(\(sum), \(ans)) \(ans)")
            print("================")
        }
        return ans
    }

    static func test() {
        let s = Solution53()
        let res = s.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
        print(res)
    }
}
