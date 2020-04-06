//
//  ViewController.m
//  BridgePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "WindowsImp.h"
#import "JPGImage.h"
#import "LinuxImp.h"
#import "GIFImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ImageImp windowsImp = [WindowsImp new];
    JPGImage *jpgImage = [[JPGImage alloc] initWithImageImp:windowsImp];
    [jpgImage showDifferentImage];
    NSLog(@"--------------------");
    
    ImageImp linuxImp = [LinuxImp new];
    GIFImage *gifImage = [[GIFImage alloc] initWithImageImp:linuxImp];
    [gifImage showDifferentImage];
    
    /**
     打印结果：
     
     在Windows系统绘制图片
     图片格式是：JPG格式
     --------------------
     在Linux系统绘制图片
     图片格式是：GIF格式
     */
    
}


@end
