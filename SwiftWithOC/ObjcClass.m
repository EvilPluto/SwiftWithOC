//
//  ObjcClass.m
//  SwiftWithOC
//
//  Created by 修海锟 on 2017/3/27.
//  Copyright © 2017年 修海锟. All rights reserved.
//

#import "ObjcClass.h"
#import "SwiftWithOC-Swift.h"

@implementation ObjcClass

- (void)desc22 {
    int (^p)(int ,int) = ^(int a, int b) {
        return a + b;
    };
    
    int result = p(1, 5);
    NSLog(@"Swift调用Objc方法输出：%d", result);
    
    SwiftClass *sc = [SwiftClass new];
    NSString *str = [sc sayHelloInSwiftWithName:@"Pluto"];
    NSLog(@"Objc调用Swift方法输出：%@", str);
}

int sum2(int a, int b){
    return a + b;
}

-(void)desc2{
    //2.声明block
    int(^p)(int, int);
    
    //3.把函数赋值给block
    //p = sum2;
    p = ^(int a, int b){
        return a + b;
    };
    
    //4.使用
    int result = p(10,40);
    printf("swift调用OC方法输出result:%d\n",result);
}

@end
