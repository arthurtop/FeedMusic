//
//  UIColor.swift
//  BabyTime
//
//  Created by 宋磊 on 2018/9/3.
//  Copyright © 2018年 songlei. All rights reserved.
//

import UIKit

public extension UIColor{
    
    ///  主题黄色
    static var mainYellowColor : UIColor {
        return UIColor(hex: 0xff8a00)
    }
    
    
    /// 分割色
    static var separatorColor : UIColor {
        return UIColor(hex: 0xdfdfdf)
    }
    
    /// 分割色
    static var disableColor : UIColor {
        return UIColor(hex: 0xbcbcbc)
    }
    
    /// 半透明颜色
    static var translucentColor : UIColor {
        return UIColor(hex: 0x000000, alpha: 0.6)
    }
    
    
    /// viewControler 背景颜色
    static var vcBgColor : UIColor {
        return UIColor(hex: 0xf4f4f4)
    }
    
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
    
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
}



public extension UIColor{
    /// 随机色
    static var random: UIColor {
        let maxValue: UInt32 = 24
        return UIColor(red: CGFloat(arc4random() % maxValue) / CGFloat(maxValue),
                       green: CGFloat(arc4random() % maxValue) / CGFloat(maxValue) ,
                       blue: CGFloat(arc4random() % maxValue) / CGFloat(maxValue) ,
                       alpha: 1)
    }
    
    
    
    
    
    /// 十六进制颜色 - 可设置透明度
    ///
    /// - Parameters:
    ///   - hex: 十六进制
    ///   - alpha: 透明度
    convenience init(hex: Int, alpha: Float) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat.init(alpha)
        )
    }
    
    /// 十六进制颜色
    ///
    /// - Parameters:
    ///   - hex: 十六进制
    convenience init(hex:Int) {
        self.init(hex: hex, alpha: 1)
    }



}

