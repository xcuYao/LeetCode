//
//  198_打家劫舍.swift
//  algorithm.swift
//
//  Created by yaoning on 5/29/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution198 {
    func rob(_ nums: [Int]) -> Int {
        var res1 = 0
        var res2 = 0
        for (index, num) in nums.enumerated() {
            print("\(index) __ \(num)")
            if index % 2 == 0 {
                res1 += num
            } else {
                res2 += num
            }
        }
        return max(res1, res2)
    }

    static func test() {
        let nums = [2, 1, 1, 2]
        let res = Solution198().rob(nums)
        print(res)
    }

}
