//
//  33_搜索旋转数组.swift
//  algorithm.swift
//
//  Created by yaoning on 5/8/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//假设按照升序排序的数组在预先未知的某个点上进行了旋转。
//
//( 例如，数组 [0,1,2,4,5,6,7] 可能变为 [4,5,6,7,0,1,2] )。
//
//搜索一个给定的目标值，如果数组中存在这个目标值，则返回它的索引，否则返回 -1 。
//
//你可以假设数组中不存在重复的元素。
//
//你的算法时间复杂度必须是 O(log n) 级别。
//
//示例 1:
//
//输入: nums = [4,5,6,7,0,1,2], target = 0
//输出: 4
//示例 2:
//
//输入: nums = [4,5,6,7,0,1,2], target = 3
//输出: -1
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/search-in-rotated-sorted-array
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 时间复杂度 O(logn)
// 空间复杂度 O(1)

import Foundation

class Solution33 {

    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 { return -1 }
        if nums.count == 1 { return nums[0] == target ? 0 : -1 }
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }
            // 左侧有序
            if nums[0] <= nums[mid] {
                if (target >= nums[0]) && (target < nums[mid]) {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                // 右侧有序
                if (target > nums[mid]) && target <= nums[nums.count - 1] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return -1
    }

    static func test() {
//        let nums = [4, 5, 6, 7, 0, 1, 2]
//        let target = 0
//        let nums = [4, 5, 6, 7, 0, 1, 2]
//        let target = 3
        let nums = [4, 5, 6, 7, 0, 1, 2]
        let target = 0
        let res = Solution33().search(nums, target)
        print("\(nums),\(target) : \(res)")
    }
}
