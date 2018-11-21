//
//  SwiftExtension.swift
//  BabyTime
//
//  Created by 宋磊 on 2018/8/30.
//  Copyright © 2018年 songlei. All rights reserved.
//

import Foundation
import UIKit


//Mark -- 给数组添加一个Extension 获取两个数组中不同的内容
/*
 let n1 = ["a", "b", "c","d"]
 let n2 = ["c", "d", "e"]
 let difference = n1.difference(from: n2)
 print(difference)   // 输出 ["b", "e", "a"]
 */
extension Array where Element: Hashable {
    func difference(from other:[Element]) -> [Element] {
        return Array(Set(self).symmetricDifference(Set(other)))
    }
}

extension CGRect {
    //.....
    //func divided(atDistance: CGFloat, from fromEdge: CGRectEdge)
     //   -> (slice: CGRect, remainder: CGRect)
    //....
}











