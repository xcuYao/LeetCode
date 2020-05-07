//
//  35_搜索插入装置.swift
//  algorithm.swift
//
//  Created by yaoning on 5/7/20.
//  Copyright © 2020 yaoning. All rights reserved.
//


//给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
//
//你可以假设数组中无重复元素。
//
//示例 1:
//
//输入: [1,3,5,6], 5
//输出: 2
//示例 2:
//
//输入: [1,3,5,6], 2
//输出: 1
//示例 3:
//
//输入: [1,3,5,6], 7
//输出: 4
//示例 4:
//
//输入: [1,3,5,6], 0
//输出: 0

import Foundation

class Solution35 {

    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return left
    }

    static func test() {
//        let res = Solution35().searchInsert([1, 3, 5, 6], 5)
//        let res = Solution35().searchInsert([1, 3, 5, 6], 2)
//        let res = Solution35().searchInsert([1, 3, 5, 6], 7)
//        let res = Solution35().searchInsert([1, 3, 5, 6], 0)
//        let res = Solution35().searchInsert([1], 0)
        let res = Solution35().searchInsert([1], 2)
        print(res)
    }

}
