//
//  ViewController.m
//  StrategyPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "BubbleSort.h"
#import "SelectionSort.h"
#import "Context.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SortingStrategy bubble = [BubbleSort new];
    Context *context1 = [[Context alloc] initWithStrategy:bubble];
    [context1 sortWithArray:@[@3, @1, @2]];
    
    SortingStrategy selection = [SelectionSort new];
    Context *context2 = [[Context alloc] initWithStrategy:selection];
    [context2 sortWithArray:@[@6, @8, @7]];
    
    /**
     打印结果：
     
     使用冒泡排序算法
     使用选择排序算法
     */
}


@end
