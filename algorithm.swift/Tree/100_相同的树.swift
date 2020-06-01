//
//  100_相同的树.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定两个二叉树，编写一个函数来检验它们是否相同。
//
//如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。
//
//示例 1:
//
//输入:       1         1
//          / \       / \
//         2   3     2   3
//
//        [1,2,3],   [1,2,3]
//
//输出: true
//示例 2:
//
//输入:      1          1
//          /           \
//         2             2
//
//        [1,2],     [1,null,2]
//
//输出: false
//示例 3:
//
//输入:       1         1
//          / \       / \
//         2   1     1   2
//
//        [1,2,1],   [1,1,2]
//
//输出: false
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/same-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution100 {

    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }

    func preOrderDFS(root: TreeNode?) -> [String] {
        guard let r = root else { return ["null"] }
        var res: [String] = []
        res.append(String(r.val))
        res += preOrderDFS(root: r.left)
        res += preOrderDFS(root: r.right)
        return res
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        let values1 = preOrderDFS(root: p)
        let values2 = preOrderDFS(root: q)
        if values1.elementsEqual(values2) {
            return true
        }
        return false
    }

    func isSameTree2(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        return p?.val == q?.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }

}
