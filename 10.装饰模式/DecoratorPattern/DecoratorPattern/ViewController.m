//
//  ViewController.m
//  DecoratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "ShenZhenHouse.h"
#import "BeiJingHouse.h"
#import "LivingRoomDecorator.h"
#import "WashRoomDecorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ShenZhenHouse *shenZhen = [ShenZhenHouse new];
    // 装饰对象指定原始对象，后面就是用装饰对象。这样既有原始对象的功能，也有装饰对象的功能
    LivingRoomDecorator *szLivingRoom = [[LivingRoomDecorator alloc] initWithHouse:shenZhen];
    // 将装饰了一次之后的对象继续注入到另一个装饰类中，进行第二次装饰
    WashRoomDecorator *szWashRoom = [[WashRoomDecorator alloc] initWithHouse:szLivingRoom];
    [szWashRoom decorateHouse];
    NSLog(@"-------------------------");
    
    BeiJingHouse *beiJing = [BeiJingHouse new];
    WashRoomDecorator *bjWashRoom = [[WashRoomDecorator alloc] initWithHouse:beiJing];
    [bjWashRoom decorateHouse];
    
    /**
     打印结果：
     
     装修深圳的房子
     增加对客厅的装修
     增加对卫生间的装修
     -------------------------
     装修北京的房子
     增加对卫生间的装修
     */
    
}


@end
