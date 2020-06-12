//
//  16_最接近的三数之和.swift
//  algorithm.swift
//
//  Created by yaoning on 6/5/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个包括 n 个整数的数组 nums 和 一个目标值 target。找出 nums 中的三个整数，使得它们的和与 target 最接近。返回这三个数的和。假定每组输入只存在唯一答案。
//
//
//
//示例：
//
//输入：nums = [-1,2,1,-4], target = 1
//输出：2
//解释：与 target 最接近的和是 2 (-1 + 2 + 1 = 2) 。
//
//
//提示：
//
//3 <= nums.length <= 10^3
//-10^3 <= nums[i] <= 10^3
//-10^4 <= target <= 10^4
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/3sum-closest
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution16 {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var nnums = nums
        nnums.sort()
        var ans = nnums[0] + nnums[1] + nnums[2]
        for (index, _)in nnums.enumerated() {
            var start = index + 1
            var end = nnums.count - 1
            while start < end {
                let sum = nnums[index] + nnums[start] + nnums[end]
                if abs(target - sum) < abs(target - ans) {
                    ans = sum
                } else if (sum < target) {
                    start += 1
                } else if (sum > target) {
                    end -= 1
                } else {
                    return ans
                }
            }
        }
        return ans
    }

    static func test() {
        let s = Solution16()
        let result = s.threeSumClosest([-1, 2, 1, -4], 1)
        print("result \(result)")
    }
}
