//
//  34_搜索旋转排序数组2.swift
//  algorithm.swift
//
//  Created by yaoning on 5/8/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//假设按照升序排序的数组在预先未知的某个点上进行了旋转。
//
//( 例如，数组 [0,0,1,2,2,5,6] 可能变为 [2,5,6,0,0,1,2] )。
//
//编写一个函数来判断给定的目标值是否存在于数组中。若存在返回 true，否则返回 false。
//
//示例 1:
//
//输入: nums = [2,5,6,0,0,1,2], target = 0
//输出: true
//示例 2:
//
//输入: nums = [2,5,6,0,0,1,2], target = 3
//输出: false
//进阶:
//
//这是 搜索旋转排序数组 的延伸题目，本题中的 nums  可能包含重复元素。
//这会影响到程序的时间复杂度吗？会有怎样的影响，为什么？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/search-in-rotated-sorted-array-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution81 {

    func search(_ nums: [Int], _ target: Int) -> Bool {
        if nums.count == 0 { return false }
        if nums.count == 1 { return nums[0] == target ? true : false }
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return true
            }
            // 左侧存在重复元素
            if nums[left] == nums[mid] {
                left += 1
            } else if nums[left] < nums[mid] {
                // 左侧有序
                if target >= nums[left] && target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                // 右侧有序
                if target > nums[mid] && target <= nums[nums.count - 1] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return false
    }

    static func test() {
//        let nums = [2, 5, 6, 0, 0, 1, 2]
//        let target = 0
//        let nums = [2, 5, 6, 0, 0, 1, 2]
//        let target = 3
        let nums = [5, 1, 3]
        let target = 3
        let res = Solution81().search(nums, target)
        print("\(nums),\(target) : \(res)")
    }
}
