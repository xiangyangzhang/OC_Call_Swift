//
//  MyImageView.m
//  Swift_Call_OC
//
//  Created by xyz on 14-9-19.
//  Copyright (c) 2014年 xyz. All rights reserved.
//

#import "MyImageView.h"
//现在 我们想在这个MyImageView类中调用 Person.swift 文件中的Person
//oc 调用swift 语言
//这时 我们需要导入一个头文件（工程名-Swift.h) (这个头文件需要我们编译一下代码 系统就会自动产生，这个头文件我们是不能显示看到的 编译器会自动产生，头文件中存放的就是 把swift 语言转化为了oc的语言 )
//这个头文件的名字 是 工程名-Swift.h 编译之后会自动产生  OC_Call_Swift-Swift.h

//OC_Call_Swift-Swift.h里面就是 把swift 转化为了oc得代码


#import <OC_Call_Swift-Swift.h>

/**
 * 
 定义宏消除performselector警告
 
 #define SuppressPerformSelectorLeakWarning(Stuff) \
 do { \
 _Pragma("clang diagnostic push") \
 _Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
 Stuff; \
 _Pragma("clang diagnostic pop") \
 } while (0)
 
 直接把警告的代码写成下文
 SuppressPerformSelectorLeakWarning([target performSelector:action withObject:exportPath]);
 */

@interface MyImageView ()
{
    Person *_person;
}
@property (nonatomic,assign) id target;
@property (nonatomic,assign) SEL action;
@end
@implementation MyImageView
//点击屏幕手指离开的触发
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if ([self.target respondsToSelector:self.action]) {
        
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        
        [self.target performSelector:self.action withObject:self];
        
#pragma clang diagnostic pop
        //调用 sleep
        [_person sleep];
    }
}

- (void)addTarget:(id)target action:(SEL)action {
    self.target = target;
    self.action = action;
    //打开用户交互
    self.userInteractionEnabled = YES;
    
    _person = [[Person alloc] init];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
