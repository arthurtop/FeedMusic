//
//  AppDelegate.swift
//  BabyTime
//
//  Created by songlei on 2018/2/5.
//  Copyright © 2018年 songlei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}



/*
 自定义log的目的是在debug模式下打印信息 在release环境下不打印 swift没有宏定义
Mark -- 自定义log
 这是一个全局函数 在任何文件都能够直接使用
 */
func XLZLog<T>(message:T, fileName:String = #file, funcName : String = #function, lineNum : Int = #line)  {
     //获取打印所在文件 #file获取的全路径
//     let file = (#file as NSString).lastPathComponent
     //获取打印所在的方法
     let funcName = #function
     //获取所在行
     
     let lineNum = #line
     
    #if SLDEBUG
    let filePath = (fileName as NSString).lastPathComponent
    //print("\(filePath):\(funcName):\(lineNum)-\(message)")
    print("Log-方法:\(funcName) 文件:\(filePath) 行:\(lineNum) log:\(message)")//我们已经打印了行数，所以就不用打印方法名了
   #endif
    
}



