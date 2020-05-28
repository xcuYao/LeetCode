//
//  94_二叉树的中序遍历.swift
//  algorithm.swift
//
//  Created by yaoning on 5/25/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution94 {
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

    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res += inorderTraversal(r.left)
        res.append(r.val)
        res += inorderTraversal(r.right)
        return res
    }

}
