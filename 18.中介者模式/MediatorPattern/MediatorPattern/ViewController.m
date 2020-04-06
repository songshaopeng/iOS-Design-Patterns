//
//  ViewController.m
//  MediatorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteMediator.h"
#import "ZhangSan.h"
#import "LiSi.h"
#import "WangWu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建中介者对象
    ConcreteMediator *mediator = [ConcreteMediator new];
    // 创建同事对象，传入同一个中介者
    Colleague *zhangSan = [[ZhangSan alloc] initWithMediator:mediator];
    Colleague *liSi = [[LiSi alloc] initWithMediator:mediator];
    Colleague *wangWu = [[WangWu alloc] initWithMediator:mediator];
    // 给中介者绑定三个对象
    [mediator add:zhangSan];
    [mediator add:liSi];
    [mediator add:wangWu];
    
    // 发送消息
    [zhangSan sendMessage:@"我爱你们"];
    NSLog(@"-----------------------");
    [liSi sendMessage:@"我不喜欢张三"];
    
    /**
     打印结果：
     
     张三发送消息：我爱你们
     李四接收消息：我爱你们
     王五接收消息：我爱你们
     -----------------------
     李四发送消息：我不喜欢张三
     张三接收消息：我不喜欢张三
     */
    
}


@end
