//
//  UIFont+Extension.swift
//  BabyTime
//
//  Created by 宋磊 on 2018/9/3.
//  Copyright © 2018年 songlei. All rights reserved.
//

import Foundation
import UIKit


public extension UIFont{
    
    /// HelveticaNeue 字体, app主要字体
    public static func helveticaNeue(_ pxSize: CGFloat) -> UIFont{
        return UIFont.init(name: "HelveticaNeue", size: CGFloat(UIFont.adaptiveFontSize(pxSize)))!
    }
    
    /// 系统字体
    public static func system(_ pxSize: CGFloat) -> UIFont{
        return UIFont.systemFont(ofSize: CGFloat(UIFont.adaptiveFontSize(pxSize)))
    }
    
    /// 系统加粗字体
    public static func boldSystem(_ pxSize: CGFloat) -> UIFont{
        return UIFont.boldSystemFont(ofSize: CGFloat(UIFont.adaptiveFontSize(pxSize)))
    }
    
}

public extension UIFont{
    /// 自适应字体的大小
    static public func adaptiveFontSize(_ pxSize: CGFloat) -> CGFloat{
        if(pxSize <= 0){
            return 10.0
        }else{
            return  pxSize * (72/96) * 1.2 * (XLZScreenWidth/320.0)
        }
    }
}








