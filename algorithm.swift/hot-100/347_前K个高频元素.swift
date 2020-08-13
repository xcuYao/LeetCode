//
//  347_前K个高频元素.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/8/13.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个非空的整数数组，返回其中出现频率前 k 高的元素。
//
//
//
//示例 1:
//
//输入: nums = [1,1,1,2,2,3], k = 2
//输出: [1,2]
//示例 2:
//
//输入: nums = [1], k = 1
//输出: [1]
//
//
//提示：
//
//你可以假设给定的 k 总是合理的，且 1 ≤ k ≤ 数组中不相同的元素的个数。
//你的算法的时间复杂度必须优于 O(n log n) , n 是数组的大小。
//题目数据保证答案唯一，换句话说，数组中前 k 个高频元素的集合是唯一的。
//你可以按任意顺序返回答案。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/top-k-frequent-elements
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation
class Solution347 {

    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        /// 使用dic进行结果的保存
        var dic: [Int: Int] = [:]
        for num in nums {
            dic[num] == nil ? (dic[num] = 1) : (dic[num]! += 1)
        }
        /// dic重新排序
        let sorted = dic.sorted(by: { $0.value > $1.value })
        /// dic取前K个
        return sorted[0..<k].map { $0.key }
    }

    static func test() {
        let nums = [1, 1, 1, 2, 2, 3]
        let res = Solution347().topKFrequent(nums, 2)
        print("\(nums) ____ \(res)")
    }
}
