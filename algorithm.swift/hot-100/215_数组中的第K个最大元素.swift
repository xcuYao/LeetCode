//
//  215_数组中的第K个最大元素.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/7/24.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution215 {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nnums = nums
        nnums.sort()
        nnums.reverse()
        return nums[k - 1]
    }
}
