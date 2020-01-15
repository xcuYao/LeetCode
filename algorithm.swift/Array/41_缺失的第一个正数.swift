//
//  41_缺失的第一个正数.swift
//  algorithm.swift
//
//  Created by yaoning on 1/14/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个未排序的整数数组，找出其中没有出现的最小的正整数。
//
//示例 1:
//
//输入: [1,2,0]
//输出: 3
//示例 2:
//
//输入: [3,4,-1,1]
//输出: 2
//示例 3:
//
//输入: [7,8,9,11,12]
//输出: 1
//说明:
//
//你的算法的时间复杂度应为O(n)，并且只能使用常数级别的空间。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/first-missing-positive
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解体思路
//  对于这道题来讲
//  每个桶只放合适自己的元素
//  (1 放到第0个桶中 3 放到第2个桶中)
//  (对于 num[i] > 0 且 <= nums.count 的元素来说 nums[i]放到第num[i]-1的桶中)
//  因此对于 不符合
//  nums[i] > 0 && nums[i] <= nums.count && nums[nums[i] - 1] != nums[i]
//  的元素 进行交换处理
//  这里交换注意顺序 需要先记录 nums[nums[i] - 1]
//  否则nums[i]的数据不正确
//
//  最后找出来 位置不正常的第一个元素 索引+1 就是目标值
//  使用while是确保 num[i] 和 nums[nums[i] - 1] 都交换到了合适的位置 while内至多执行两次
//  时间复杂度O(n)

class Solution41 {

    func firstMissingPositice(_ nums: inout [Int]) -> Int {

        if nums.count == 0 { return 1 }

        for i in 0..<nums.count {
            while nums[i] > 0 && nums[i] <= nums.count && nums[nums[i] - 1] != nums[i] {
                let tmp = nums[nums[i] - 1]
                nums[nums[i] - 1] = nums[i]
                nums[i] = tmp
            }
        }

        for i in 0..<nums.count {
            if nums[i] != i + 1 {
                return i + 1
            }
        }

        return nums.count + 1
    }

    static func test() {
        var nums = [3, 1, 4, -1]
        let res = Solution41().firstMissingPositice(&nums)
        print("41_缺失的第一个正数")
        print("nums: \(nums)")
        print("res: \(res)")
    }
}
