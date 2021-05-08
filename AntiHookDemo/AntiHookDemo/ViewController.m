//
//  ViewController.m
//  AntiHookDemo
//
//  Created by ZP on 2021/5/8.
//

#import "ViewController.h"
#import <HookManager/HookManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    exchange_p(class_getInstanceMethod(self.class, @selector(btn2Click:)),class_getInstanceMethod(self.class, @selector(test)));
}

- (void)test {
    NSLog(@"self Hook Success");
}

- (IBAction)btn1Click:(id)sender {
    NSLog(@"click btn1");
}

- (IBAction)btn2Click:(id)sender {
    NSLog(@"click btn2");
}

@end
