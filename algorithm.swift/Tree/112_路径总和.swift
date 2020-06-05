//
//  112_路径总和.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

//给定一个二叉树和一个目标和，判断该树中是否存在根节点到叶子节点的路径，这条路径上所有节点值相加等于目标和。
//
//说明: 叶子节点是指没有子节点的节点。
//
//示例:
//给定如下二叉树，以及目标和 sum = 22，
//
//              5
//             / \
//            4   8
//           /   / \
//          11  13  4
//         /  \      \
//        7    2      1
//返回 true, 因为存在目标和为 22 的根节点到叶子节点的路径 5->4->11->2。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/path-sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution112 {

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

    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let r = root else { return false }
        let target = sum - r.val
        if target == 0 && r.left == nil && r.right == nil {
            return true
        }
        return hasPathSum(r.left, target) || hasPathSum(r.right, target)
    }

    static func test() {
//        var datas = [5, 4, 8, 11, -999, 13, 4, 7, 2, -999, -999, -999, 1]
//        var node = TreeNode(5)
//        for data in datas {
//
//        }
//        [5,4,8,11,null,13,4,7,2,null,null,null,1]
//        22
//        var trees = []
    }

}
