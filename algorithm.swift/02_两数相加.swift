//
//  02_两数相加.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/8.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

//题目
//给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
//
//如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
//
//您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
//
//示例：
//
//输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
//输出：7 -> 0 -> 8
//原因：342 + 465 = 807
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/add-two-numbers
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 求解思路
// 定义预先指针pre 初始值为0 最后返回预先指针的next
// 记录溢出值carry 记录两数相加 溢出的部分
// 定义要返回链表的当前指针 当前指针的值 永远为 两个节点值与carry相加取余的结果
// 取整部分加到carry中
// 当carry等于1时要额外增加一个节点

class ListNode {
    var val: Int?
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution02 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l11: ListNode? = l1
        var l22: ListNode? = l2
        let pre = ListNode(0)
        var cur: ListNode? = pre
        var carry = 0
        while l11 != nil || l22 != nil {
            let x = l11?.val ?? 0
            let y = l22?.val ?? 0
            var sum = x + y + carry
            carry = sum / 10
            sum = sum % 10
            cur?.next = ListNode(sum)
            cur = cur?.next
            l11 = l11?.next
            l22 = l22?.next
        }
        if carry == 1 {
            cur?.next = ListNode(carry)
        }
        return pre.next
    }

    static func test() {
//        let l1 = ListNode(1)
//        l1.next = ListNode(8)
//        let l2 = ListNode(0)

        let l1 = ListNode(7)
        l1.next = ListNode(8)
        l1.next?.next = ListNode(9)
        let l2 = ListNode(3)
        l2.next = ListNode(2)

        var res = Solution02().addTwoNumbers(l1, l2)
        var flag = true
        while flag {
            print("\(res?.val)")
            res = res?.next
            if res?.next == nil {
                print("\(res?.val)")
                flag = false
            }
        }
    }
}
