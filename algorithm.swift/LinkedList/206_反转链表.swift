//
//  206_反转链表.swift
//  algorithm.swift
//
//  Created by yaoning on 5/11/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//反转一个单链表。
//
//示例:
//
//输入: 1->2->3->4->5->NULL
//输出: 5->4->3->2->1->NULL
//进阶:
//你可以迭代或递归地反转链表。你能否用两种方法解决这道题？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/reverse-linked-list
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation



class Solution206 {

    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
        // 双指针迭代
        var pre: ListNode?
        var cur = head
        var tmp: ListNode?
        while (cur != nil) {
            tmp = cur?.next
            cur?.next = pre
            pre = cur
            cur = tmp
        }
        return pre
    }

    static func test() {

    }
}
