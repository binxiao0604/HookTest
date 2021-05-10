// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>

//要hook的类
%hook ViewController

//要hook的方法
- (void)btn1Click:(id)sender {
    NSLog(@"Monkey Hook Success");
    //调用原来的方法
    %orig;//相当于IMP
}
 
%end
 
 
