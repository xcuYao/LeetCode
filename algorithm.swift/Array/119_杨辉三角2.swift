//
//  119_杨辉三角.swift
//  algorithm.swift
//
//  Created by yaoning on 1/21/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个非负索引 k，其中 k ≤ 33，返回杨辉三角的第 k 行。
//
//
//
//在杨辉三角中，每个数是它左上方和右上方的数的和。
//
//示例:
//
//输入: 3
//输出: [1,3,3,1]
//进阶：
//
//你可以优化你的算法到 O(k) 空间复杂度吗？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/pascals-triangle-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 第n行的数据 = 第n-1行 最前边补0 除最后一个外两两相加
// 第4行 1 3 3 1
// 第5行 = (0, 1, 3, 3, 1) 两两相加(0+1, 1+3, 3+3, 3+1, 1)
//

class Solution119 {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        }
        var res = [1]
        for i in 1...rowIndex {
            res.insert(0, at: 0)
            for j in 0..<i {
                res[j] = res[j] + res[j + 1]
            }
        }

        return res
    }

    static func test() {
        print("119_杨辉三角2")
        let res = Solution119().getRow(3)
        print(res)
    }

}
