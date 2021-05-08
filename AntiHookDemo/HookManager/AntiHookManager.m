//
//  AntiHookManager.m
//  HookManager
//
//  Created by ZP on 2021/5/8.
//

#import "AntiHookManager.h"
#import "fishhook.h"

@implementation AntiHookManager

+ (void)load {
    //基本防护
    struct rebinding exchange;
    exchange.name = "method_exchangeImplementations";
    exchange.replacement = hp_exchange;
    exchange.replaced = (void *)&exchange_p;
    struct rebinding bds[] = {exchange};
    rebind_symbols(bds, 1);
}


//指回原方法
void (*exchange_p)(Method _Nonnull m1, Method _Nonnull m2);

void hp_exchange(Method _Nonnull m1, Method _Nonnull m2) {
    //可以在这里进行上报后端等操作
    NSLog(@"find  Hook");
}

@end
