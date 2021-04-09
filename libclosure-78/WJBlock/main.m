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
        __block int a = 30;
        void (^mallocBlock)(void) = ^void { a++; };
        NSLog(@"mallBlock = %@", mallocBlock);
        
        NSLog(@"Hello, World!");
    }
    return NSApplicationMain(argc, argv);
}
