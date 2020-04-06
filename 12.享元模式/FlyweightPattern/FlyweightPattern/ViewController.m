//
//  ViewController.m
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "CellFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     说明：UITableViewCell的复用机制与这里Demo不尽相同，需要查看UITableViewCell的复用机制请自行查阅资料
        这里的Demo就是展示享元模式设计的大概思路
     */
    CellFactory *factory = [CellFactory sharedInstance];
    Cell *imageCell1, *imageCell2, *imageCell3, *textCell1, *textCell2;
    imageCell1 = [factory getCellWithCellID:@"ImageCell"];
    imageCell2 = [factory getCellWithCellID:@"ImageCell"];
    imageCell3 = [factory getCellWithCellID:@"ImageCell"];
    NSLog(@"imageCell1 = %p", imageCell1);
    NSLog(@"imageCell2 = %p", imageCell2);
    NSLog(@"imageCell3 = %p", imageCell3);
    NSLog(@"-------------------");
    
    textCell1 = [factory getCellWithCellID:@"TextCell"];
    textCell2 = [factory getCellWithCellID:@"TextCell"];
    
    NSLog(@"textCell1 = %p", textCell1);
    NSLog(@"textCell2 = %p", textCell2);
    NSLog(@"-------------------");
    
    // 设置外部状态
    [imageCell1 setRowIndex:0];
    [imageCell2 setRowIndex:1];
    [textCell1 setRowIndex:2];
    
    /**
     打印结果：从享元工厂类得到的对象内存地址一样，很好地复用了对象
     
     imageCell1 = 0x600002dbcc70
     imageCell2 = 0x600002dbcc70
     imageCell3 = 0x600002dbcc70
     -------------------
     textCell1 = 0x600002dac660
     textCell2 = 0x600002dac660
     -------------------
     Cell复用ID = ImageCell, rowIndex = 0
     Cell复用ID = ImageCell, rowIndex = 1
     Cell复用ID = TextCell, rowIndex = 2
     */
    
}


@end
