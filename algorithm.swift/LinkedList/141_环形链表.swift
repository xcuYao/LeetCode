//
//  141_环形链表.swift
//  algorithm.swift
//
//  Created by yaoning on 5/12/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个链表，判断链表中是否有环。
//
//为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。
//
//
//
//示例 1：
//
//输入：head = [3,2,0,-4], pos = 1
//输出：true
//解释：链表中有一个环，其尾部连接到第二个节点。
//
//
//示例 2：
//
//输入：head = [1,2], pos = 0
//输出：true
//解释：链表中有一个环，其尾部连接到第一个节点。
//
//
//示例 3：
//
//输入：head = [1], pos = -1
//输出：false
//解释：链表中没有环。
//
//
//
//
//进阶：
//
//你能用 O(1)（即，常量）内存解决此问题吗？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/linked-list-cycle
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution141 {

    class ListNode {
        var val: Int?
        var next: ListNode?
        init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

    /// 暴力法 哈希表 时间复杂度 O(n) 空间复杂度O(n)
    /// 遍历链表 依次存入数组 如果数组中出现重复元素 则表示有环
//    func hasCycle(_ head: ListNode?) -> Bool {
//        var nodes: [ListNode?] = []
//        var newHead = head
//        while newHead != nil {
//            if nodes.contains(where: { $0 === newHead}) {
//                return true
//            }
//            nodes.append(newHead)
//            newHead = newHead?.next
//        }
//        return false
//    }
    
    /// 快慢指针法 时间复杂度O(n)  空间复杂度O(1)
    /// 记忆: 在环形跑道上 跑的快的早晚会追上跑的快的
    /// - Parameter head:
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next
        while slow !== fast {
            if fast == nil || fast?.next == nil {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }

    static func test() {

    }
}
