//
//  139_单词拆分.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/7/23.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution139 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = Array<Bool>(repeating: false, count: s.count + 1)
        dp[0] = true
        for i in 1...s.count {
            for j in 0...i {
                let start = s.index(s.startIndex, offsetBy: j)
                let end = s.index(s.startIndex, offsetBy: i-1)
                if dp[j] && wordDict.contains(String(s[start...end])) {
                    dp[i] = true
                    break
                }
            }
        }
        return dp[s.count]
    }

    static func test() {
        let s = Solution139()
        let res = s.wordBreak("leetcode", ["leet", "code"])
        print("\(res)")
    }

}

