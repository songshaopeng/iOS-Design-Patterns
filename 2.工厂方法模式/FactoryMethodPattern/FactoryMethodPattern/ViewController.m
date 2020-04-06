//
//  ViewController.m
//  FactoryMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Appliance.h"
#import "HaierFactory.h"
#import "MideaFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Appliance *airConditioning = [HaierFactory factoryWithString:kAirConditioning];
    [airConditioning work];
    Appliance *tv = [HaierFactory factoryWithString:kTelevision];
    [tv work];
    NSLog(@"-------------------");
    
    Appliance *mideaAir = [MideaFactory factoryWithString:kAirConditioning];
    [mideaAir work];
}


@end
