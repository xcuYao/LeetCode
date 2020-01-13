//
//  189_旋转数组.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/12.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
//
//示例 1:
//
//输入: [1,2,3,4,5,6,7] 和 k = 3
//输出: [5,6,7,1,2,3,4]
//解释:
//向右旋转 1 步: [7,1,2,3,4,5,6]
//向右旋转 2 步: [6,7,1,2,3,4,5]
//向右旋转 3 步: [5,6,7,1,2,3,4]
//示例 2:
//
//输入: [-1,-100,3,99] 和 k = 2
//输出: [3,99,-1,-100]
//解释:
//向右旋转 1 步: [99,-1,-100,3]
//向右旋转 2 步: [3,99,-1,-100]
//说明:
//
//尽可能想出更多的解决方案，至少有三种不同的方法可以解决这个问题。
//要求使用空间复杂度为 O(1) 的 原地 算法。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/rotate-array
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 求解思路
// 公式求解 （下标+k)%nums.count=新下标
// 空间复杂度 O(n) 时间复杂度 O(n)
class Solution189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.isEmpty {
            return
        }
        var newNums = nums
        for i in 0..<nums.count {
            newNums[(i + k) % nums.count] = nums[i]
        }
        nums = newNums
    }

    static func test() {
        print("189_旋转数组")
        var nums = [0, 4, 5, 7, 8]
        print("原数组: \(nums)")
        Solution189().rotate(&nums, 2)
        print("旋转\(2) 之后:\(nums)")
    }
}
