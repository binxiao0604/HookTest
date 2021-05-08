//
//  AntiHookManager.h
//  HookManager
//
//  Created by ZP on 2021/5/8.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

//暴露给外界使用
CF_EXPORT void (*exchange_p)(Method _Nonnull m1, Method _Nonnull m2);

@interface AntiHookManager : NSObject

@end
