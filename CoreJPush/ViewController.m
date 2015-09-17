//
//  ViewController.m
//  CoreJPush
//
//  Created by 冯成林 on 15/9/17.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreJPush.h"

@interface ViewController ()<CoreJPushProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CoreJPush addJPushListener:self];
    
}

-(void)dealloc{
    
    [CoreJPush removeJPushListener:self];
}




-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo{
    
    NSLog(@"ViewController: %@",userInfo);
    
}





@end
