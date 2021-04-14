//
//  main.m
//  WJBlock
//
//  Created by 贺文杰 on 2021/4/9.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        //堆block
        __block int a = 30;
        void (^mallocBlock)(void) = ^void { a++; };
        NSLog(@"mallBlock = %@", mallocBlock);

        //全局block
//        void (^block)(void)=^{
////            NSLog(@"46467 a = %d", a); //全句block变成了堆block，因为引用了外部变量，进行了copy操作
//            NSLog(@"46467"); //全句block
//        };
//        block();
//        NSLog(@"glo = %@", block);
//
//        //栈block
//        //需要设置Objective-C Automatic Reference Counting = NO
//        //因为在ARC环境下，编译器自动帮我们加了copy操作
//        int b = 10;
//        NSLog(@"z = %@", ^{
//            NSLog(@"345 - %d", b);
//        });
        
        NSLog(@"Hello, World!");
    }
    return NSApplicationMain(argc, argv);
}
