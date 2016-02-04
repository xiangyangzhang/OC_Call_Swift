//
//  Swift_OC.h
//  2Swift_Call_OC
//
//  Created by xyz on 15-2-27.
//  Copyright (c) 2015年 xyz. All rights reserved.
//

#ifndef _Swift_Call_OC_Swift_OC_h
#define _Swift_Call_OC_Swift_OC_h
//把 需要在swift 中调用的oc 的头文件在这个头文件中导入

//然后在xcode 中build settings 中 找到一个选项Objective-C Brigding Header 然后把当前这个头文件设置为 桥接的头文件
//那么这样 swift 就可以调用 oc 的代码了
//编译器会自动的把oc的代码转化为swift 语言

#import "MyImageView.h"

#endif
