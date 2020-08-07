//
//  114_二叉树展开为列表.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/8/6.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个二叉树，原地将它展开为一个单链表。
//
//
//
//例如，给定二叉树
//
//    1
//   / \
//  2   5
// / \   \
//3   4   6
//将其展开为：
//
//1
// \
//  2
//   \
//    3
//     \
//      4
//       \
//        5
//         \
//          6
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/flatten-binary-tree-to-linked-list
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution114 {
    class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }

    //----------------------
    // 先序遍历 还原二叉树

    func preOrder(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res.append(r.val)
        res += preOrder(r.left)
        res += preOrder(r.right)
        return res
    }

    func flatten1(_ root: TreeNode?) {
        let res = preOrder(root)
        print(res)
        var lastTree: TreeNode?
        var beginTree: TreeNode?
        res.forEach { value in
            if lastTree == nil {
                lastTree = TreeNode(value)
                beginTree = lastTree
            } else {
                let nTree = TreeNode(value)
                lastTree?.right = nTree
                lastTree = nTree
            }
        }
        root?.left = nil
        root?.right = beginTree?.right
    }

    //----------------------

    func flatten2(_ root: TreeNode?) {
        var curr = root
        while curr != nil {
            if curr?.left != nil {
                let next = curr?.left
                var pre = next
                // 寻找右子树的前驱节点
                while pre?.right != nil {
                    pre = pre?.right
                }
                // 将右子树接到前驱节点上
                pre?.right = curr?.right
                // 将当前节点的左子树置为空
                curr?.left = nil
                // 将当前节点的左子树作为右子树
                curr?.right = next
            }
            // 依次遍历右节点
            curr = curr?.right
        }
    }

    //----------------------

    var pre: TreeNode?
    func flatten(_ root: TreeNode?) {
        if root == nil { return }
        print("root val: \(root?.val ?? -1)")
        flatten(root?.right)
        flatten(root?.left)
        root?.right = pre
        root?.left = nil
        pre = root
    }

    static func test() {
        let t1 = TreeNode(1)
        t1.left = TreeNode(2)
        t1.right = TreeNode(5)
        t1.left?.left = TreeNode(3)
        t1.left?.right = TreeNode(4)
        t1.right?.right = TreeNode(6)

        let s = Solution114()
//        s.flatten(t1)
//
//        let res = s.preOrder(t1)
//        print(res)
//        s.flatten1(t1)
        s.flatten2(t1)
        var pR: TreeNode? = t1
        while pR != nil {
            print(pR?.val ?? -1)
            pR = pR?.right
        }
    }
}
