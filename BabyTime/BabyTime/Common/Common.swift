//
//  Common.swift
//  BabyTime
//
//  Created by 宋磊 on 2018/8/31.
//  Copyright © 2018年 songlei. All rights reserved.
//

import Foundation
import UIKit




//....正则表达式 使用自定义方法
/*
 let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
 let matcher: RegexHelper
 do {
 matcher = RegexHelper(pattern: mailPattern)
 }
 
 let maybeMailAddress = "onev@onevcat.com"
 
 if matcher.match(input: maybeMailAddress) {
 print("有效的邮箱地址")
 }
 */
struct RegexHelper {
    let regex: NSRegularExpression
    
    init(pattern: String) throws {
        try regex = NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    }
    
    func match(input: String) -> Bool {
        let matchs = regex.matches(in: input, options: [], range: NSMakeRange(0, input.utf16.count))
        return matchs.count > 0
    }
}

/*
prefix operator ~/
prefix func ~/(pattern: String) -> NSRegularExpression {
//    return try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
}
*/



///只在debug环境下打印, 携带文件及函数信息
public func slprint(_ items: Any..., separator: String = " ", terminator: String = "\n", file: StaticString = #file, line: UInt = #line, function: StaticString = #function){
    
    #if DEBUG
    
    if let lastPath = file.description.components(separatedBy: "/").last{
        print("\(lastPath) func:\(function) line:\(line)", separator: "", terminator: ":  ")
    }else{
        print("\(file) func:\(function) line:\(line)", separator: "", terminator: ":  ")
    }
    
    items.forEach { (item) in
        print(item, separator: "", terminator: "")
        print(separator, separator: "", terminator: "")
    }
    
    print(terminator, separator: "", terminator: "")
    
    #endif
}

// MARK: --- do something
/*
 交换输入
 let temp = a
 a = b
 b = temp
 */
func swapMe<T>(a: inout T, b: inout T) {
    (a,b) = (b,a)
}



// TODO: --- todo something
/*
 角度(angles)与弧度( radians)相互转换
 */
// 角度 -> 弧度
func degree2radian(_ number: Double) -> Double {
    return number * .pi / 180
}

// 弧度 -> 角度
func radian2degree(_ number: Double) -> Double {
    return number * 180 / .pi
}

// WARNING:Add your API key here
// FIXME: -- todo something

/*
 获取系统处理器的运行压力状态
 
 使用ProcessInfo.processInfo.thermalState获取处理器的当前运行状态,一共有四种情况:
 .critical: 极度严重, 最好停止你的一切操作,尤其是动画等耗时工作
 .serious: 严重, 系统工作在一个高度运转状态,最好缩减你的CPU/GPU或者IO操作等
 .nominal: 正常
 .fair: 合理 , 通常可以释放一些不可见的UI资源
 */
func CPUProcessStauts() {
    
    let states = ProcessInfo.processInfo.thermalState
    switch states {
    case .critical:
        print("system 要死了,警告你别惹我!")
    case .nominal:
        print("system 正常运行")
    case .serious:
        print("system 很累啦~但还能勉强坚持一阵")
    default:
        print("system 你要注意合理调度哦~")
    }
    
}




























