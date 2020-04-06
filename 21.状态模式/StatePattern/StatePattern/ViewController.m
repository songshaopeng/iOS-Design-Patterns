//
//  ViewController.m
//  StatePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建孙悟空对象
    Person *monkeyKing = [Person new];
    monkeyKing.money = 5;
    [monkeyKing playGame];
    
    monkeyKing.money = 50;
    [monkeyKing playGame];
    
    monkeyKing.money = 500;
    [monkeyKing playGame];
    
    monkeyKing.money = 5000;
    [monkeyKing playGame];
    
    /**
     打印结果：
     
     普通会员：刚出生，攻击力5，只能打败普通人
     黄金会员：长大了，攻击力200，打败比克大魔王
     白金会员：变身超级赛亚人1，攻击力20000，击败宇宙魔王弗利萨
     钻石会员：变身超级赛亚人2，攻击力200000，击杀生化人沙鲁
     */
}


@end
