//
//  134_加油站.swift
//  algorithm.swift
//
//  Created by yaoning on 1/16/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

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
        if gas.count == 0 || cost.count == 0 { return -1 }
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
        return total >= 0 ? start : -1
    }

    static func test() {
        let index = Solution134().canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])
        print("zzzz: \(index)")
    }

}
