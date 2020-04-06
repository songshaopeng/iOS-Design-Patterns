//
//  ViewController.m
//  SingletonPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "HungrySingleton.h"
#import "LazySingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HungrySingleton *s1 = [HungrySingleton sharedInstance];
    HungrySingleton *s2 = [[HungrySingleton alloc] init];
    NSLog(@"s1 = %p", s1);
    NSLog(@"s2 = %p", s2);
    
    LazySingleton *s3 = [LazySingleton sharedInstance];
    LazySingleton *s4 = [[LazySingleton alloc] init];
    NSLog(@"s3 = %p", s3);
    NSLog(@"s4 = %p", s4);
}


@end
