//
//  01_两数之和.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/7.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
//
//示例:
//
//给定 nums = [2, 7, 11, 15], target = 9
//
//因为 nums[0] + nums[1] = 2 + 7 = 9
//所以返回 [0, 1]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/two-sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

/// 两数之和
/// 第一种 暴力求解 两遍遍历
/// 第二种 哈希表 减少遍历
/// 第三种 创建哈希表的同时 查找元素
class Solution01 {
//    func twoNum(_ nums: [Int], _ target: Int) -> [Int]{
//        for (index, num) in nums.enumerated(){
//            for index2 in (index+1..<nums.count){
//                if (target - num) == nums[index2]{
//                    return [index, index2]
//                }
//            }
//        }
//        return []
//    }
//    func twoNum(_ nums:[Int], _ target:Int) -> [Int]{
//        var hash: [Int:Int] = [:]
//        for (index, num) in nums.enumerated(){
//            hash[num] = index
//        }
//        for (index, num) in nums.enumerated(){
//            if let index2 = hash[target - num], index != index2{
//                return [index, index2]
//            }
//        }
//        return []
//    }
    func twoNum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let v = target - num
            if let index2 = hash[v], index2 != index {
                return [index, index2]
            }
            hash[num] = index
        }
        return []
    }

    static func test() {
        let s1 = Solution01()
        let res = s1.twoNum([3, 2, 4], 6)
        print(res)
    }
}
