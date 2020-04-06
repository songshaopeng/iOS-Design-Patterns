//
//  ViewController.m
//  IteratorPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "ProductList.h"
#import "AbstractIterator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ProductList *products = [ProductList new];
    [products addObject:@"苹果"];
    [products addObject:@"香蕉"];
    [products addObject:@"橘子"];

    AbstractIterator iterator = [products createIterator];
    while (![iterator isLast]) {
        NSLog(@"%@", [iterator getCurrentItem]);
        [iterator next];
    }
    
    /**
     打印结果：
     
     苹果
     香蕉
     橘子
     */
}


@end
