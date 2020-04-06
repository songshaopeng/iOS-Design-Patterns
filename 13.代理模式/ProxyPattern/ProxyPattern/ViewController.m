//
//  ViewController.m
//  ProxyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Proxy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *xiaoHong = [[Person alloc] initWithName:@"小红"];
    Proxy *proxy1 = [[Proxy alloc] initWithPerson:xiaoHong];
    [proxy1 buyChanel];
    [proxy1 buyLV];
    NSLog(@"--------------");
    
    Person *xiaoFang = [[Person alloc] initWithName:@"小芳"];
    Proxy *proxy2 = [[Proxy alloc] initWithPerson:xiaoFang];
    [proxy2 buyChanel];
    
    /**
     打印结果：
     
     小红购买了香奈儿香水
     小红购买了LV包包
     小红买包包送手环
     --------------
     小芳购买了香奈儿香水
     */
    
}


@end
