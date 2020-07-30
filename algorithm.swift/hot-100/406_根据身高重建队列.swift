//
//  406_根据身高重建队列.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/7/30.
//  Copyright © 2020 yaoning. All rights reserved.
//
//
//假设有打乱顺序的一群人站成一个队列。 每个人由一个整数对(h, k)表示，其中h是这个人的身高，k是排在这个人前面且身高大于或等于h的人数。 编写一个算法来重建这个队列。
//
//注意：
//总人数少于1100人。
//
//示例
//
//输入:
//[[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]
//
//输出:
//[[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/queue-reconstruction-by-height
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 同一身高的人排序 按照第二位升序排序
// 不同身高的人   按照身高降序排列
// 最后再来一趟插入 

import Foundation

class Solution406 {

    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        people.sorted(by: { $0[0] == $1[0] ? $0[1] < $1[1]: $0[0] > $1[0] }).forEach{ res.insert($0, at: $0[1]) }
        return res
    }

    static func test() {
        print("=============")
        let s = Solution406()
        let test = [[7, 0], [4, 4], [7, 1], [5, 0], [6, 1], [5, 2]]
        let res = s.reconstructQueue(test)
        print(test)
        print(res)
    }
}
