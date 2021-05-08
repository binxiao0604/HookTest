//
//  HPInject.m
//  HPHook
//
//  Created by ZP on 2021/5/8.
//

#import "HPInject.h"
#import <objc/message.h>

@implementation HPInject

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(objc_getClass("ViewController"), @selector(btn1Click:)), class_getInstanceMethod(self, @selector(my_click)));
}

- (void)my_click {
    NSLog(@"inject Success");
}

@end
