//
//  05_最长回文子串.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/10.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。
//
//示例 1：
//
//输入: "babad"
//输出: "bab"
//注意: "aba" 也是一个有效答案。
//示例 2：
//
//输入: "cbbd"
//输出: "bb"
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/longest-palindromic-substring
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution05 {

    // 解法1 暴力求解
    // 增加判断是否是回文字符串的方法 isPalindrome
    // 两层循环 找出所有可能的子字符串
    // 所有的子字符串去检查是否是回文
    // 永远记录最长值
    // 遍历完毕 返回最长值
    // 时间复杂度O(n^3)
//    func isPalindrome(_ s: String) -> Bool {
//        let characters = Array(s)
//        for index in 0..<characters.count / 2 {
//            let tailIndex = characters.count - index - 1
//            if characters[index] != characters[tailIndex] {
//                return false
//            }
//        }
//        return true
//    }
//
//    func longestPalindrome(_ s: String) -> String {
//        var maxL = 0
//        var ans: String = ""
//        let characters = Array(s)
//        for i in 0..<characters.count {
//            for j in i..<characters.count {
//                let sub = String(characters[i...j])
//                if isPalindrome(sub) && sub.count > maxL {
//                    ans = sub
//                    maxL = max(maxL, ans.count)
//                }
//            }
//        }
//        return ans
//    }

//    var res = ""
//
//    // 解法2 中心扩散法
//    // 存在两种回文的情况 aba abba
//    // 所以从中心扩散 可能为(i,i) 即一个字母 b
//    //             也可能为(i, i+1) 即两个字母 bb
//    // 遍历一边 针对两种情况 分别调用helper方法 检查回文 找出长度最长的那一个
//    // helper方法 就判断left和rigth是否相同即可，相同left左移 rigth右移
//    // 不同即可结束
//    // 时间复杂度O(n^2) 空间复杂度O(1)
//    func longestPalindrome(_ s: String) -> String {
//        if s.count == 0 {
//            return s
//        }
//        let characters = Array(s)
//        for i in 0..<characters.count {
//            helper(s: s, left: i, right: i)
//            helper(s: s, left: i, right: i + 1)
//        }
//        return res
//    }
//
//    func helper(s: String, left: Int, right: Int) {
//        var l = left
//        var r = right
//        let characters = Array(s)
//        while l >= 0 && r < s.count && characters[l] == characters[r] {
//            l -= 1
//            r += 1
//        }
//        let cur = String(characters[l + 1..<r])
//        if cur.count > res.count {
//            res = cur
//        }
//    }

    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {
            return s
        }
        let characters = Array(s)
        var curMax: String = ""
        for i in 0..<characters.count {
            let c1 = helper(s: s, left: i, right: i)
            let c2 = helper(s: s, left: i, right: i + 1)
            let cc = c1.count > c2.count ? c1 : c2
            curMax = cc.count > curMax.count ? cc : curMax
        }
        return curMax
    }

    func helper(s: String, left: Int, right: Int) -> String {
        var l = left
        var r = right
        let characters = Array(s)
        while l >= 0 && r < s.count && characters[l] == characters[r] {
            l -= 1
            r += 1
        }
        let cur = String(characters[l + 1..<r])
        return cur
    }

    static func test() {
        let s = "321012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210123210012321001232100123210123"
        let res = Solution05().longestPalindrome(s)
        print("\(res)")
    }

}


