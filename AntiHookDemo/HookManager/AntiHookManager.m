//
//  AntiHookManager.m
//  HookManager
//
//  Created by ZP on 2021/5/8.
//

#import "AntiHookManager.h"
#import "fishhook.h"

@implementation AntiHookManager

+ (void)load
{
    //基本防护
    struct rebinding exchange;
    exchange.name = "method_exchangeImplementations";
    exchange.replacement = hp_exchange;
    exchange.replaced = (void *)&exchange_p;

    struct rebinding setIMP;
    setIMP.name = "method_setImplementation";
    setIMP.replacement = hp_setImp;
    setIMP.replaced = (void *)&setImp_p;


    struct rebinding getIMP;
    getIMP.name = "method_getImplementation";
    getIMP.replacement = hp_getImp;
    getIMP.replaced = (void *)&getImp_p;

    struct rebinding bds[] = {exchange, setIMP, getIMP};
    rebind_symbols(bds, 3);
}


//指回原方法
void (*exchange_p)(Method _Nonnull m1, Method _Nonnull m2);

IMP _Nonnull (*getImp_p)(Method _Nonnull m);

IMP _Nonnull (*setImp_p)(Method _Nonnull m, IMP _Nonnull imp);

void hp_exchange(Method _Nonnull m1, Method _Nonnull m2)
{
    //可以在这里进行上报后端等操作
    NSLog(@"find  Hook");
}

void(hp_getImp)(Method _Nonnull m)
{
    NSLog(@"find  Hook getImp");
}

void(hp_setImp)(Method _Nonnull m, IMP _Nonnull imp)
{
    NSLog(@"find  Hook setImp");
}

@end
