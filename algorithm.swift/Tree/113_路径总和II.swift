//
//  113_路径总和II.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//
//
//给定一个二叉树和一个目标和，找到所有从根节点到叶子节点路径总和等于给定目标和的路径。
//
//说明: 叶子节点是指没有子节点的节点。
//
//示例:
//给定如下二叉树，以及目标和 sum = 22，
//
//              5
//             / \
//            4   8
//           /   / \
//          11  13  4
//         /  \    / \
//        7    2  5   1
//返回:
//
//[
//   [5,4,11,2],
//   [5,8,4,5]
//]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/path-sum-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution113 {

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

    var level: [Int] = []
    var result: [[Int]] = []

    func dfs(root: TreeNode?, target: Int) {
        guard let r = root else { return }
        level.append(r.val)
        let tmp = target - r.val
        if r.left == nil && r.right == nil {
            if tmp == 0 {
                result.append(level)
            }
        } else {
            dfs(root: r.left, target: tmp)
            dfs(root: r.right, target: tmp)
        }
        level.removeLast()
    }

    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        dfs(root: root, target: sum)
        return result
    }


   

}
