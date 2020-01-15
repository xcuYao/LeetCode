//
//  27_移除元素.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/11.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个数组 nums 和一个值 val，你需要原地移除所有数值等于 val 的元素，返回移除后数组的新长度。
//
//不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
//
//元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。
//
//示例 1:
//
//给定 nums = [3,2,2,3], val = 3,
//
//函数应该返回新的长度 2, 并且 nums 中的前两个元素均为 2。
//
//你不需要考虑数组中超出新长度后面的元素。
//示例 2:
//
//给定 nums = [0,1,2,2,3,0,4,2], val = 2,
//
//函数应该返回新的长度 5, 并且 nums 中的前五个元素为 0, 1, 3, 0, 4。
//
//注意这五个元素可为任意顺序。
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
//// nums 是以“引用”方式传递的。也就是说，不对实参作任何拷贝
//int len = removeElement(nums, val);
//
//// 在函数里修改输入数组对于调用者是可见的。
//// 根据你的函数返回的长度, 它会打印出数组中该长度范围内的所有元素。
//for (int i = 0; i < len; i++) {
//    print(nums[i]);
//}
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/remove-element
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 空间复杂度O(1) 就不能额外开辟新的数组
// 所以 考虑遍历过程中 将非目标元素移动到数组头部 并记录非目标元素数量 控制头部flag
class Solution27 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var ans = 0
        for num in nums{
            if num != val{
                nums[ans] = num
                ans += 1
            }
        }
        return ans
    }

    static func test() {
        var nums = [1, 1, 12, 3, 4]
        let target = 3
        print("27_移除元素")
        print("原数组: \(nums)")
        let end = Solution27().removeElement(&nums, target)
        print("移除目标元素: \(target)  之后: \(nums[0..<end])")
    }
}

