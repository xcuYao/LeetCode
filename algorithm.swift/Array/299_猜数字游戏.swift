//
//  299_猜数字游戏.swift
//  algorithm.swift
//
//  Created by yaoning on 1/15/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//你正在和你的朋友玩 猜数字（Bulls and Cows）游戏：你写下一个数字让你的朋友猜。每次他猜测后，你给他一个提示，告诉他有多少位数字和确切位置都猜对了（称为“Bulls”, 公牛），有多少位数字猜对了但是位置不对（称为“Cows”, 奶牛）。你的朋友将会根据提示继续猜，直到猜出秘密数字。
//
//请写出一个根据秘密数字和朋友的猜测数返回提示的函数，用 A 表示公牛，用 B 表示奶牛。
//
//请注意秘密数字和朋友的猜测数都可能含有重复数字。
//
//示例 1:
//
//输入: secret = "1807", guess = "7810"
//
//输出: "1A3B"
//
//解释: 1 公牛和 3 奶牛。公牛是 8，奶牛是 0, 1 和 7。
//示例 2:
//
//输入: secret = "1123", guess = "0111"
//
//输出: "1A1B"
//
//解释: 朋友猜测数中的第一个 1 是公牛，第二个或第三个 1 可被视为奶牛。
//说明: 你可以假设秘密数字和朋友的猜测数都只包含数字，并且它们的长度永远相等。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/bulls-and-cows
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 这个题感觉难度主要在于读懂题意
// 对于两个长度相等的的字符串secret guess 进行比较
// 如果位置相同 值也相同 则公牛(bulls)+1
// 如果guess中除公牛外的字符 在secret中包含 并且之前没有被比较过 则母牛(cows)+1
// 因为需要记录secret中cows的比较次数 因此用map记录secret中 可能母牛的字符及其次数
// 1. 遍历secret 找到bulls 以及一个可能cows的map
// 2. 遍历guess 找到除bulls 且map中包含且value!=0 的值cows+1 同时map中value-1
// 3. 拼接字符串

class Solution299 {
    func getHint(_ secret: String, _ guess: String) -> String {
        let secrets = Array(secret)
        let guesses = Array(guess)
        var bullsCount = 0
        var cowsCount = 0
        var map: [String: Int] = [:]
        for i in 0..<secrets.count{
            if secrets[i] == guesses[i]{
                bullsCount += 1
            } else {
                let key = String(secrets[i])
                if let value = map[key]{
                    map[key] = value + 1
                }else{
                    map[key] = 1
                }
            }
        }
        for i in 0..<guesses.count{
            if secrets[i] != guesses[i]{
                let key = String(guesses[i])
                if let value = map[key], value != 0{
                    map[key] = value - 1
                    cowsCount += 1
                }
            }
        }
        return "\(bullsCount)A\(cowsCount)B"
    }

    static func test() {
        let res = Solution299().getHint("1123", "0111")
        print("\(res)")
    }

}
