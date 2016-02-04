//
//  AppDelegate.swift
//  2Swift_Call_OC
//
//  Created by xyz on 15-2-27.
//  Copyright (c) 2015年 xyz. All rights reserved.
//

import UIKit
//swift 中 调用 OC的代码


//假设 工程 中 有OC的文件/代码

//现在在swift 中 调用 MyImageView 类

//这时我们需要增加一些设置
//1.创建一个头文件 
//2.在头文件中导入 需要调用的oc 的头文件


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    
        //创建一个oc的自定义图片视图
        let myImageView = MyImageView()
        myImageView.frame = CGRectMake(50, 50, 50, 100)
        //设置图片
        myImageView.image = UIImage(named: "Mole01.png")
        //增加事件
        myImageView.addTarget(self, action: "imageClick:")
        self.window!.addSubview(myImageView)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
    
    func imageClick(imageView:MyImageView) {
        //CGFloat  不是Double 不同数据类型 之间运算 要强制转换
        let red:CGFloat = CGFloat(arc4random()%256)/CGFloat(255.0)
        let blue:CGFloat = CGFloat(arc4random()%256)/CGFloat(255.0)
        let green:CGFloat = CGFloat(arc4random()%256)/CGFloat(255.0)
        
        //修改背景颜色
        self.window!.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

