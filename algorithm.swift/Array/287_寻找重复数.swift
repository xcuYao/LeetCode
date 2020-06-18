//
//  287_寻找重复数.swift
//  algorithm.swift
//
//  Created by yaoning on 6/18/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个包含 n + 1 个整数的数组 nums，其数字都在 1 到 n 之间（包括 1 和 n），可知至少存在一个重复的整数。假设只有一个重复的整数，找出这个重复的数。
//
//示例 1:
//
//输入: [1,3,4,2,2]
//输出: 2
//示例 2:
//
//输入: [3,1,3,4,2]
//输出: 3
//说明：
//
//不能更改原数组（假设数组是只读的）。
//只能使用额外的 O(1) 的空间。
//时间复杂度小于 O(n2) 。
//数组中只有一个重复的数字，但它可能不止重复出现一次。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/find-the-duplicate-number
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution287 {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[nums[0]]

        while slow != fast {
            let oldSlow = slow
            let oldFast = fast
            slow = nums[slow]
            fast = nums[nums[fast]]
            print("nums[\(oldSlow)]:\(slow) nums[\(oldFast)]:\(fast)")
        }
        slow = 0
        print("==============")
        while slow != fast {
            let oldSlow = slow
            let oldFast = fast
            slow = nums[slow]
            fast = nums[fast]
            print("num[\(oldSlow)]:\(slow) nums[\(oldFast)]:\(fast)")
        }
        return slow
    }

    func findDuplicate2(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[nums[0]]

        while slow != fast {
            let oldSlow = slow
            let oldFast = fast
            slow = nums[slow]
            fast = nums[nums[fast]]
            print("nums[\(oldSlow)]:\(slow) nums[\(oldFast)]:\(fast)")
        }
        return nums[slow]
    }

    static func test() {
        let s = Solution287()
//        let num = [1, 3, 4, 2, 2]
//        let result = s.findDuplicate(num)

        let num = [2, 5, 9, 6, 9, 3, 8, 9, 7, 1]
        let result = s.findDuplicate2(num)

        print("======Solution287=====")
        print(result)
    }

}
