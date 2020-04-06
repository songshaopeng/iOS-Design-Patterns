//
//  ViewController.m
//  AbstractFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "HaierFactory.h"
#import "MideaFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 一个factory可以创建多个产品
    AbstractFactory *haier = [HaierFactory new];
    AirConditioning *haierAir = [haier createAirConditioning];
    Washer *haierWasher = [haier createWasher];
    [haierAir coolAir];
    [haierWasher washClothes];
    NSLog(@"-------------------");
    
    AbstractFactory *midea = [MideaFactory new];
    AirConditioning *mideaAir = [midea createAirConditioning];
    Washer *mideaWasher = [midea createWasher];
    [mideaAir coolAir];
    [mideaWasher washClothes];
}


@end
