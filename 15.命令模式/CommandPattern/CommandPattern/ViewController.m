//
//  ViewController.m
//  CommandPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "FishCommand.h"
#import "MuttonCommand.h"
#import "BeerCommand.h"
#import "Customer.h"
#import "CommandQueue.h"
#import "NewCustomer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test1];
//    [self test2];
}

// 一个个点菜
- (void)test1 {
    Command *fish = [FishCommand new];
    Customer *customer = [[Customer alloc] initWithCommand:fish];
    [customer needFood];

    Command *mutton = [MuttonCommand new];
    customer.command = mutton;
    [customer needFood];

    Command *beer = [BeerCommand new];
    customer.command = beer;
    [customer needFood];
    
    /**
     打印结果：
     
     厨师做食物：烤鱼一条
     厨师做食物：烤羊肉串10串
     超市购买食物：啤酒一打
     */
}

// 一起点菜
- (void)test2 {
    Command *fish = [FishCommand new];
    Command *mutton = [MuttonCommand new];
    Command *beer = [BeerCommand new];
    
    CommandQueue *queue = [CommandQueue new];
    [queue addCommand:fish];
    [queue addCommand:mutton];
    [queue addCommand:beer];
    
    NewCustomer *customer = [[NewCustomer alloc] initWithQueue:queue];
    [customer needFood];
    
    /**
     打印结果：
     
     厨师做食物：烤鱼一条
     厨师做食物：烤羊肉串10串
     超市购买食物：啤酒一打
     */
}


@end
