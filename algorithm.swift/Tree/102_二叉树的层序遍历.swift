//
//  102_二叉树的层序遍历.swift
//  algorithm.swift
//
//  Created by yaoning on 5/25/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution102 {

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

    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let r = root else { return [] }
        var result: [[Int]] = []
        var queue: [TreeNode] = [r]

        while !queue.isEmpty {
            var res: [Int] = []
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                res.append(node.val)
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            result.append(res)
        }

        return result
    }
}
