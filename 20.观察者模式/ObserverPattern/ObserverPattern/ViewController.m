//
//  ViewController.m
//  ObserverPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Terrorist.h"
#import "Soldier.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 定义观察目标对象
    Subject *Thanos = [[Terrorist alloc] initWithName:@"灭霸"];
    // 定义四个观察者对象
    Observer IronMan = [[Soldier alloc] initWithName:@"钢铁侠"];
    Observer CaptainAmerica = [[Soldier alloc] initWithName:@"美国队长"];
    Observer BlackWidow = [[Soldier alloc] initWithName:@"黑寡妇"];
    Observer Hulk = [[Soldier alloc] initWithName:@"绿巨人"];
    
    // 添加观察者
    [Thanos attach:IronMan];
    [Thanos attach:CaptainAmerica];
    [Thanos attach:BlackWidow];
    [Thanos attach:Hulk];
    
    // 通知大家
    [Thanos notify];
    
    /**
     打印结果：
     
     灭霸开始攻击了, hp = 100
     钢铁侠反击, 灭霸的hp = 75
     美国队长反击, 灭霸的hp = 50
     黑寡妇反击, 灭霸的hp = 25
     绿巨人反击, 灭霸的hp = 0
     */
}


@end
