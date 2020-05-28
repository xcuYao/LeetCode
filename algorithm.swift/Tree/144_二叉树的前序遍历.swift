//
//  144_二叉树的前序遍历.swift
//  algorithm.swift
//
//  Created by yaoning on 5/25/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个二叉树，返回它的 前序 遍历。
//
// 示例:
//
//输入: [1,null,2,3]
//   1
//    \
//     2
//    /
//   3
//
//输出: [1,2,3]
//进阶: 递归算法很简单，你可以通过迭代算法完成吗？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/binary-tree-preorder-traversal
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution144 {

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

    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res.append(r.val)
        res += preorderTraversal(r.left)
        res += preorderTraversal(r.right)
        return res
    }
}
