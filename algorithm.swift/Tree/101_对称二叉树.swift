//
//  101_对称二叉树.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个二叉树，检查它是否是镜像对称的。
//
//
//
//例如，二叉树 [1,2,2,3,4,4,3] 是对称的。
//
//    1
//   / \
//  2   2
// / \ / \
//3  4 4  3
//
//
//但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:
//
//    1
//   / \
//  2   2
//   \   \
//   3    3
//
//
//进阶：
//
//你可以运用递归和迭代两种方法解决这个问题吗？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/symmetric-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

// 左树的左孩子和右树的的右孩子
// 左树的右孩子和右树的左孩子

import Foundation

class Solution101 {

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

    func isMirror(left: TreeNode?, right: TreeNode?) -> Bool {
        if left == nil && right == nil { return true }
        if left == nil || right == nil { return false }
        if left?.val == right?.val {
            return isMirror(left: left?.right, right: right?.left) && isMirror(left: left?.left, right: right?.right)
        }
        return false
    }

    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(left: root, right: root)
    }
}
