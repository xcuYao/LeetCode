//
//  257_二叉树的所有路径.swift
//  algorithm.swift
//
//  Created by yaoning on 6/1/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Solution257 {

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

    func construct_path(root: TreeNode?, path: String, paths: inout [String]) {
        guard let r = root else { return }
        var p = path.appending(String(r.val))
        if r.left == nil && r.right == nil {
            paths.append(p)
        } else {
            p = p.appending("->")
            construct_path(root: r.left, path: p, paths: &paths)
            construct_path(root: r.right, path: p, paths: &paths)
        }
    }

    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        let path = ""
        var paths: [String] = []
        construct_path(root: root, path: path, paths: &paths)
        return []
    }

}
