//
//  134_加油站.swift
//  algorithm.swift
//
//  Created by yaoning on 1/16/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//在一条环路上有 N 个加油站，其中第 i 个加油站有汽油 gas[i] 升。
//
//你有一辆油箱容量无限的的汽车，从第 i 个加油站开往第 i+1 个加油站需要消耗汽油 cost[i] 升。你从其中的一个加油站出发，开始时油箱为空。
//
//如果你可以绕环路行驶一周，则返回出发时加油站的编号，否则返回 -1。
//
//说明:
//
//如果题目有解，该答案即为唯一答案。
//输入数组均为非空数组，且长度相同。
//输入数组中的元素均为非负数。
//示例 1:
//
//输入:
//gas  = [1,2,3,4,5]
//cost = [3,4,5,1,2]
//
//输出: 3
//
//解释:
//从 3 号加油站(索引为 3 处)出发，可获得 4 升汽油。此时油箱有 = 0 + 4 = 4 升汽油
//开往 4 号加油站，此时油箱有 4 - 1 + 5 = 8 升汽油
//开往 0 号加油站，此时油箱有 8 - 2 + 1 = 7 升汽油
//开往 1 号加油站，此时油箱有 7 - 3 + 2 = 6 升汽油
//开往 2 号加油站，此时油箱有 6 - 4 + 3 = 5 升汽油
//开往 3 号加油站，你需要消耗 5 升汽油，正好足够你返回到 3 号加油站。
//因此，3 可为起始索引。
//示例 2:
//
//输入:
//gas  = [2,3,4]
//cost = [3,4,3]
//
//输出: -1
//
//解释:
//你不能从 0 号或 1 号加油站出发，因为没有足够的汽油可以让你行驶到下一个加油站。
//我们从 2 号加油站出发，可以获得 4 升汽油。 此时油箱有 = 0 + 4 = 4 升汽油
//开往 0 号加油站，此时油箱有 4 - 3 + 2 = 3 升汽油
//开往 1 号加油站，此时油箱有 3 - 3 + 3 = 3 升汽油
//你无法返回 2 号加油站，因为返程需要消耗 4 升汽油，但是你的油箱只有 3 升汽油。
//因此，无论怎样，你都不可能绕环路行驶一周。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/gas-station
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 这个题 算法写起来很简单
// 1. 引入三个变量 curr total start 分别记录当前油量 一圈下来油箱剩余油量 正确的起点
// 2. 一次遍历 curr += gas[i] - cost[i] 如果curr小于0 证明start不可到达该点 修改start为 i+1
//    同时total += gas[i] - cost[i]
// 3. 遍历结束 如果total<0 证明无解 因为sum(gas) < sum(cost) 反之则为（start+1）号加油站
// 这里比较难理解的是 若从A到D不可达(D为第一个不可达点) 则AD之间的BC点均不可达D
// 可以用反证法 若B到D可达 A到B可达 则A到D必然可达 因为A到D不可达 则B C均不可达
class Solution134 {
//    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
//        var spare = 0
//        var minSpare = Int.max
//        var minIndex = 0
//        for i in 0..<gas.count {
//            spare += gas[i] - cost[i]
//            if spare < minSpare {
//                minSpare = spare
//                minIndex = i
//            }
//        }
//        return spare < 0 ? -1 : (minIndex + 1) % gas.count
//    }

    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var total = 0
        var curr = 0
        var start = 0
        for i in 0..<gas.count {
            curr += gas[i] - cost[i]
            if curr < 0 {
                start = i + 1
                curr = 0
            }
            total += gas[i] - cost[i]
        }

        return total < 0 ? -1 : start
    }

    static func test() {
        let index = Solution134().canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])
        print("134_加油站")
        print("zzzz: \(index)")
    }

}
