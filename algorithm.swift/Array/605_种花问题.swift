//
//  605_种花问题.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/7/3.
//  Copyright © 2020 yaoning. All rights reserved.
//

//假设你有一个很长的花坛，一部分地块种植了花，另一部分却没有。可是，花卉不能种植在相邻的地块上，它们会争夺水源，两者都会死去。
//
//给定一个花坛（表示为一个数组包含0和1，其中0表示没种植花，1表示种植了花），和一个数 n 。能否在不打破种植规则的情况下种入 n 朵花？能则返回True，不能则返回False。
//
//示例 1:
//
//输入: flowerbed = [1,0,0,0,1], n = 1
//输出: True
//示例 2:
//
//输入: flowerbed = [1,0,0,0,1], n = 2
//输出: False
//注意:
//
//数组内已种好的花不会违反种植规则。
//输入的数组长度范围为 [1, 20000]。
//n 是非负整数，且不会超过输入数组的大小。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/can-place-flowers
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


//解题思路：
//连续三个空花盆 可以种一株花
//最开始和后的花盆需要特殊考虑 通过前后补0来消除这种特殊性

import Foundation

class Solution605 {

    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var workBed = flowerbed
        workBed.append(0)
        workBed.insert(0, at: 0)
        var canPlaceCount = 0
        for i in 1...workBed.count - 2 {
            if workBed[i - 1] == 0 && workBed[i] == 0 && workBed[i + 1] == 0 {
                canPlaceCount += 1
                workBed[i] = 1
            }
        }
        return n <= canPlaceCount
    }

    static func test() {

    }
}



