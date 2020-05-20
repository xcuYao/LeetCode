//
//  24_两两交换链表中的节点.swift
//  algorithm.swift
//
//  Created by yaoning on 5/12/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
//
//你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。
//
//
//
//示例:
//
//给定 1->2->3->4, 你应该返回 2->1->4->3.
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/swap-nodes-in-pairs
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution24 {

    class ListNode {
        var val: Int?
        var next: ListNode?
        init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

//    func swapPairs(_ head: ListNode?) -> ListNode? {
//
//        var prev_node: ListNode?
//        while head != nil && head?.next != nil {
//            var first_node = head
//            var second_node = head?.next
//
//            prev_node?.next = second_node
//            first_node?.next = second_node?.next
//            second_node?.next = first_node
//
//            prev_node = first_node
//            head = first_node?.next
//        }
//    }

    static func test() {

    }
}
