//
//  912_排序数组.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/8/24.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给你一个整数数组 nums，请你将该数组升序排列。
//
//
//
//示例 1：
//
//输入：nums = [5,2,3,1]
//输出：[1,2,3,5]
//示例 2：
//
//输入：nums = [5,1,1,2,0,0]
//输出：[0,0,1,1,2,5]
//
//
//提示：
//
//1 <= nums.length <= 50000
//-50000 <= nums[i] <= 50000
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/sort-an-array
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 1. 什么是快速排序
//    C. A. R. Hoare在1960年提出
//    东尼·霍尔（https://zh.wikipedia.org/wiki/%E6%9D%B1%E5%B0%BC%C2%B7%E9%9C%8D%E7%88%BE）
//    86岁 英国人 [图灵奖](https://zh.wikipedia.org/wiki/%E5%9B%BE%E7%81%B5%E5%A5%96)得主
//    具体的思想是啥
//    通过一趟排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一部分的所有数据都要小，
//    然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列
//
//    理解: 找一个基准值 通过一趟扫描 找到它的正确位置并且保证一边的数据都小于另一边
//    然后对两部分再实行一遍同样的排序,递归进行
//
// 2. 实现白板
//  4, 3, 1, 6, 5, 2
//
//
// 3. 实现
//    关键点 平衡点找对位置 (升序)比它小的都放到左边(nums[i] = nums[j])
//                           比它大的都放到右边(nums[j] = nums[i])
//                      最后再把它的值给赋上nums[i] = pivot
//          左递归     quickSort(&nums, left, i - 1)
//          右递归     quickSort(&nums, i + 1, right)
// 4. 复杂度分析
//    大O记号 用于描述函数渐进行为的数学符号
//           更确切的说 它是用另一个(通常更简单的)函数来描述函数数量级的渐近上界
//    数学归纳法 推导公式 去掉常数项 保留高次项
//    最佳情况 每次都五五分 一次递归 比较n次 递归深度log n
//             比如4个 比较4次 递归深度2
//                8个 比较8次 递归深度3
//                16个 比较16次 递归深度4
//                n个 比较n次 递归深度 log P = log(n)
//             每次递归都是n的复杂度 总的复杂度为n*log(n)
//    最差情况 本身有序 每次拆分 n-1 和 0 个
//            比如 4个 比较4次 递归深度 3
//            比如 8个 比较8次 递归深度 7
//              n(n-1) = n^2
//    最坏情况 6 5 4 3 2 1
//    时间 平均 O(n log n) 最坏O(n^2)  最好O(n log n)
//
//    如何证明快速排序法的平均复杂度为 O(nlogn)？
//
//    https://www.zhihu.com/question/22393997
//
//    log(n) 为何去掉底数？
//    log(a^n) 都可以转化为log(b^n)
//    换底公式

import Foundation

class Solution912 {
//    func sortArray(_ nums: [Int]) -> [Int] {
//        var newNums = nums
//        quickSort(&newNums, start: 0, end: nums.count - 1)
//        return newNums
//    }
//
//    func quickSort(_ nums: inout [Int], start: Int, end: Int) {
//        if start >= end {
//            return
//        }
//        var i = start, j = end
//        let temp = nums[i]
//        while i < j {
//            while i < j && temp <= nums[j] {
//                j -= 1
//            }
//            nums[i] = nums[j]
//            while i < j && temp >= nums[i] {
//                i += 1
//            }
//            nums[j] = nums[i]
//        }
//        nums[i] = temp
//        quickSort(&nums, start: start, end: i - 1)
//        quickSort(&nums, start: i + 1, end: end)
//    }

    func sortArray(_ nums: [Int]) -> [Int] {
        var newNums = nums
        quickSort(&newNums, 0, nums.count - 1)
        return newNums
    }

    func quickSort(_ nums: inout [Int], _ left: Int, _ right: Int) {
        if left >= right {
            return
        }
        var i = left , j = right
        let pivot = nums[i]
        while i < j {
            while i < j && pivot <= nums[j] {
                j -= 1
            }
            nums[i] = nums[j]
            while i < j && pivot >= nums[i] {
                i += 1
            }
            nums[j] = nums[i]
        }
        nums[i] = pivot
        print(nums)
        quickSort(&nums, i + 1, right)
        quickSort(&nums, left, i - 1)
    }

    static func test() {
//        let s = Solution912()
//        let res = s.sortArray([5, 2, 3, 1])
        let s = Solution912()
//        let res = s.sortArray([4, 3, 1, 6, 5, 2])
//        let res = s.sortArray([6, 5, 4, 3, 2, 1])
        let res = s.sortArray([4, 1, 2, 3, 7, 6, 5])
        print(res)
    }

}
