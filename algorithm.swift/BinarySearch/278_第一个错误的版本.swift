//
//  278_第一个错误的版本.swift
//  algorithm.swift
//
//  Created by yaoning on 5/7/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//你是产品经理，目前正在带领一个团队开发新的产品。不幸的是，你的产品的最新版本没有通过质量检测。由于每个版本都是基于之前的版本开发的，所以错误的版本之后的所有版本都是错的。
//
//假设你有 n 个版本 [1, 2, ..., n]，你想找出导致之后所有版本出错的第一个错误的版本。
//
//你可以通过调用 bool isBadVersion(version) 接口来判断版本号 version 是否在单元测试中出错。实现一个函数来查找第一个错误的版本。你应该尽量减少对调用 API 的次数。
//
//示例:
//
//给定 n = 5，并且 version = 4 是第一个错误的版本。
//
//调用 isBadVersion(3) -> false
//调用 isBadVersion(5) -> true
//调用 isBadVersion(4) -> true
//
//所以，4 是第一个错误的版本。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/first-bad-version
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 二分查找算法
// 时间复杂度 O(logn)
// 空间复杂度 O(1)

import Foundation

class Solution278 {

    private var badVersion = 1

    func isBadVersion(_ n: Int) -> Bool {
        return n >= badVersion
    }

    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        var result = n
        while left <= right {
            let mid = (left + right) / 2
            if isBadVersion(mid) {
                result = mid
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return result
    }

    static func test() {
        let res = Solution278().firstBadVersion(1)
        print(res)
    }
}
