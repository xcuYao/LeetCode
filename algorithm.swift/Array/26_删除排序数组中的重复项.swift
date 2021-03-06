//
//  26_删除排序数组中的重复项.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/11.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个排序数组，你需要在原地删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
//
//不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
//
//示例 1:
//
//给定数组 nums = [1,1,2],
//
//函数应该返回新的长度 2, 并且原数组 nums 的前两个元素被修改为 1, 2。
//
//你不需要考虑数组中超出新长度后面的元素。
//示例 2:
//
//给定 nums = [0,0,1,1,1,2,2,3,3,4],
//
//函数应该返回新的长度 5, 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4。
//
//你不需要考虑数组中超出新长度后面的元素。
//说明:
//
//为什么返回数值是整数，但输出的答案是数组呢?
//
//请注意，输入数组是以“引用”方式传递的，这意味着在函数里修改输入数组对于调用者是可见的。
//
//你可以想象内部操作如下:
//
//// nums 是以“引用”方式传递的。也就是说，不对实参做任何拷贝
//int len = removeDuplicates(nums);
//
//// 在函数里修改输入数组对于调用者是可见的。
//// 根据你的函数返回的长度, 它会打印出数组中该长度范围内的所有元素。
//for (int i = 0; i < len; i++) {
//    print(nums[i]);
//}
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 快慢指针
// i为慢指针 记录要返回的内容
// j为快指针 开始从i+1位置移动
// 当发现与nums[i]不相同的元素时 则加入(慢指针向前移动 并且将j位置值填入i位置)
// j走到头之后 nums[0...i]既非重复项
// 排序数组的表明 重复元素是连续的
// 若重复元素不连续 则不适用
class Solution26 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var i = 0
        for j in 1..<nums.count {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }

    static func test() {
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        print("26_删除排序数组中的重复项")
        print("原数组:\(nums)")
        let end = Solution26().removeDuplicates(&nums)
        print("结果:\(nums[0..<end])")
    }
}
