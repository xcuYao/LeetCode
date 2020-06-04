//
//  226_翻转二叉树.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution226 {

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

    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        let left = invertTree(root?.left)
        let right = invertTree(root?.right)
        root?.left = right
        root?.right = left
        return root
    }
}
