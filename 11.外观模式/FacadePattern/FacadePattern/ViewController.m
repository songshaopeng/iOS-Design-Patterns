//
//  ViewController.m
//  FacadePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "PhoneStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PhoneStore *store = [PhoneStore new];
    [store sellAllPhones];
    
    /**
     打印结果：
     
     售卖苹果手机
     售卖华为手机
     售卖小米手机
     */
}


@end
