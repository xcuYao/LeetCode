//
//  createTree.swift
//  algorithm.swift
//
//  Created by yaoning on 6/4/20.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

class Tree {

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

    /// 创建树
    /// - Parameters:
    ///   - list: BFS描述
    ///   - start: 根节点索引
    /// - Returns:
    func create(list: [Int], start: Int) -> TreeNode? {
        if list[start] == -1 {
            return nil
        }
        let node = TreeNode(list[start])
        let lnodeIndex = start * 2 + 1
        let rnodeIndex = start * 2 + 2
        if lnodeIndex > list.count - 1 {
            node.left = nil
        } else {
            node.left = create(list: list, start: lnodeIndex)
        }

        if rnodeIndex > list.count - 1 {
            node.right = nil
        } else {
            node.right = create(list: list, start: rnodeIndex)
        }

        return node
    }

    func preOrder(root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res.append(r.val)
        res += preOrder(root: r.left)
        res += preOrder(root: r.right)
        return res
    }

    func inOrder(root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res += inOrder(root: r.left)
        res.append(r.val)
        res += inOrder(root: r.right)
        return res
    }

    func postOrder(root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let r = root else { return [] }
        res += postOrder(root: r.left)
        res += postOrder(root: r.right)
        res.append(r.val)
        return res
    }


    static func test() {
//        let list = [5, 4, 8, 11, -1, 13, 4, 7, 2, -1, -1, -1, 1]
        let list = [1, -1, 2, 3]
        let tree = Tree()
        let root = tree.create(list: list, start: 0)
//        tree.dfs2(root: root)
        let res1 = tree.preOrder(root: root)
        print("先序遍历: \(res1)")
        let res2 = tree.inOrder(root: root)
        print("中序遍历: \(res2)")
        let res3 = tree.postOrder(root: root)
        print("后序遍历: \(res3)")
    }

}
