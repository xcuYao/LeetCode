//
//  03_无重复字符的最长字串.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/8.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
//
//示例 1:
//
//输入: "abcabcbb"
//输出: 3
//解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
//示例 2:
//
//输入: "bbbbb"
//输出: 1
//解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
//示例 3:
//
//输入: "pwwkew"
//输出: 3
//解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
//     请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/longest-substring-without-repeating-characters
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 解题思路
// 滑动窗口求解
// 1.遍历过程中不断移动右窗口的值 并记录到map中 key为值 value为索引+1（表示右侧为不重复元素）
// 2.当map中包含重复值时 窗口左边界移动（取max(之前左边界,重复值右侧)）
// 3. ans = max（之前窗口长度,窗口长度）
// 最后返回ans

class Solution03 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var start = 0
        var map: [Character: Int] = [:]
        var ans = 0
        let characters = Array(s)
        for end in 0..<characters.count{
            let character = characters[end]
            if let index = map[character]{
                start = max(start, index)
            }
            ans = max(ans, end - start + 1)
            map[character] = end + 1
        }
        return ans
    }

    static func test() {
        let n = Solution03().lengthOfLongestSubstring("abcabcbb")
        print("\(n)")
    }

}
