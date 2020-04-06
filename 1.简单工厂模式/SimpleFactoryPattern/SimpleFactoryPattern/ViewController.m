//
//  ViewController.m
//  SimpleFactoryPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Appliance.h"
#import "Factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Appliance *airConditioning = [Factory factoryWithString:kAirConditioning];
    [airConditioning work];
    
    Appliance *tv = [Factory factoryWithString:kTelevision];
    [tv work];
}


@end
