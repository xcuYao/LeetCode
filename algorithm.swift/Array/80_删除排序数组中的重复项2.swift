//
//  80_删除排序数组中的重复项.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/11.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution80 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 { return nums.count }
        var i = 0
        var count = 1
        for j in 1..<nums.count {
            if nums[j] == nums[i] {
                count += 1
            } else {
                count = 1
            }
            if count < 3 {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}
