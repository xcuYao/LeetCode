//
//  main.swift
//  algorithm.swift
//
//  Created by yaoning on 2020/1/3.
//  Copyright © 2020 yaoning. All rights reserved.
//

import Foundation

print("Hello, World!")

// 数组类型题目

//Solution26.test()
//Solution27.test()
//Solution80.test()
//Solution189.test()
//Solution41.test()
//Solution299.test()
//Soution134.test()
//Solution118.test()
//Solution119.test()
//Solution16.test()
//Solution53.test()

//------------------------------

//Solution01.test()

//Solution02.test()

//Solution03.test()

//Solution05.test()


// 二分查找类型题目
//------------------------------
//Solution278.test()
//Solution35.test()
//Solution33.test()
//Solution81.test()


// 链表相关题目
//------------------------------
//Solution206.test()


//Solution198.test()

// 树相关题目
//-------------------------------
//Solution113.test()
//Tree.test()


//let sizeMB = String(format: "%.2f", Float(22222222) / (1024 * 1024))
//print("sizeMB: \(sizeMB)")

<<<<<<< HEAD

class S6{
    
    func reverse(number: Int) -> Int {
        var reverse = 0
        var num = number
        while num > 0 {
            reverse *= 10
            reverse += num % 10
            num /= 10
            print("reverse: \(reverse) num: \(num)")
        }
        return reverse
    }

    static func test() {
        let num = 101
        let s = S6()
        let res = s.reverse(number: num)
        print(res)
        
//        101 % 10 = 1
//        101 / 10 = 10
//        10 % 10  = 1
//        10 / 10 = 1
//        1 % 10 = 1
//        1 / 10 = 0
        
    }
}

S6.test()
Solution287.test()
