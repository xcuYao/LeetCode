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
    
    // 解法2 马拉车法
    func longestPalindrome(_ s: String) -> String {
        return ""
    }
    
    static func test() {
        let s = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
        let res = Solution05().longestPalindrome(s)
        print("\(res)")
    }

}


