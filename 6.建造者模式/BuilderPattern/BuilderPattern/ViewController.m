//
//  ViewController.m
//  BuilderPattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "PhoneDirector.h"
#import "HuaWeiBuilder.h"
#import "IphoneBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PhoneDirector *director = [PhoneDirector new];
    HuaWeiBuilder *huaWeiBuilder = [HuaWeiBuilder new];
    IphoneBuilder *iPhoneBuilder = [IphoneBuilder new];
    
    Phone *huaWeiPhone = [director constructWithBuilder:huaWeiBuilder];
    Phone *iphone = [director constructWithBuilder:iPhoneBuilder];
    NSLog(@"HuaWeiPhone：cpu = %@, screen = %@, camera = %@, system = %@", huaWeiPhone.cpu, huaWeiPhone.screen, huaWeiPhone.camera, huaWeiPhone.system);
    NSLog(@"iPhone：cpu = %@, screen = %@, camera = %@, system = %@", iphone.cpu, iphone.screen, iphone.camera, iphone.system);
    
    /**
     打印结果：
     
     HuaWeiPhone：cpu = 麒麟处理器, screen = 京东方屏幕, camera = 莱卡摄像头, system = 安卓系统
     iPhone：cpu = A系列处理器, screen = 三星屏幕, camera = Sony摄像头, system = iOS系统
     
     */
}


@end
