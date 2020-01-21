//
//  118_杨辉三角.swift
//  algorithm.swift
//
//  Created by yaoning on 1/21/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个非负整数 numRows，生成杨辉三角的前 numRows 行。
//在杨辉三角中，每个数是它左上方和右上方的数的和。
//
//示例:
//
//输入: 5
//输出:
//[
//     [1],
//    [1,1],
//   [1,2,1],
//  [1,3,3,1],
// [1,4,6,4,1]
//]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/pascals-triangle
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 观察可以得到 第n行的第i个元素 = 第n-1行的第i-1个元素和第i个元素之和
// n的边界条件为大于2 i的边界条件为非n的第一个和最后一个
// 求解第n行 需要第n-1行 求解n-1行 需要n-2行 可以自然得到递归的解法
// 递归的退出条件为 n为第1和第2行

class Solution118 {
    func generate(_ numRows: Int) -> [[Int]] {
        var res: [[Int]] = []
        if numRows == 0 {
            return res
        }
        if numRows == 1 {
            res.append([1])
            return res
        }

        res = generate(numRows - 1)
        var lastLine = Array<Int>(repeating: 1, count: numRows)
        for i in 1..<numRows - 1 {
            if let la = res.last {
                lastLine[i] = la[i - 1] + la[i]
            }
        }
        res.append(lastLine)
        return res
    }

    static func test() {
        print("118_杨辉三角")
        let res = Solution118().generate(5)
        for (index, row) in res.enumerated() {
            print("第\(index + 1)行: \(row)")
        }
    }

}


