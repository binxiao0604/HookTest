#line 1 "/Users/zaizai/HookTest/MonkeyDemo/MonkeyDemoDylib/Logos/MonkeyDemoDylib.xm"


#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ViewController;
static void (*_logos_orig$_ungrouped$ViewController$btn1Click$)(_LOGOS_SELF_TYPE_NORMAL ViewController *_LOGOS_SELF_CONST, SEL, id);
static void _logos_method$_ungrouped$ViewController$btn1Click$(_LOGOS_SELF_TYPE_NORMAL ViewController *_LOGOS_SELF_CONST, SEL, id);

#line 6 "/Users/zaizai/HookTest/MonkeyDemo/MonkeyDemoDylib/Logos/MonkeyDemoDylib.xm"


static void _logos_method$_ungrouped$ViewController$btn1Click$(_LOGOS_SELF_TYPE_NORMAL ViewController *_LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender)
{
    NSLog(@"Monkey Hook Success");

    _logos_orig$_ungrouped$ViewController$btn1Click$(self, _cmd, sender);
}


static __attribute__((constructor)) void _logosLocalInit()
{
    {
        Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController");
        {
            MSHookMessageEx(_logos_class$_ungrouped$ViewController, @selector(btn1Click:), (IMP)&_logos_method$_ungrouped$ViewController$btn1Click$, (IMP *)&_logos_orig$_ungrouped$ViewController$btn1Click$);
        }
    }
}
#line 17 "/Users/zaizai/HookTest/MonkeyDemo/MonkeyDemoDylib/Logos/MonkeyDemoDylib.xm"
