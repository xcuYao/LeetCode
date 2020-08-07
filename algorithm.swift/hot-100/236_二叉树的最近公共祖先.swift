//
//  236_二叉树的最近公共祖先.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/8/6.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution236 {
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

    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        if root == nil || root == p || root == q {
//            return root
//        }
        
        return nil
    }

    static func test() {
        let t1 = TreeNode(3)
        t1.left = TreeNode(5)
        t1.right = TreeNode(1)
        t1.left?.left = TreeNode(6)
        t1.left?.right = TreeNode(2)
        t1.left?.right?.left = TreeNode(7)
        t1.left?.right?.right = TreeNode(4)
        t1.right?.left = TreeNode(0)
        t1.right?.right = TreeNode(8)
        
        let s = Solution236()
        let res = s.lowestCommonAncestor(t1, TreeNode(4), TreeNode(5))
        print(res)
    }

}
